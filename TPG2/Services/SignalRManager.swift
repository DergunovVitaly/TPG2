//
//  SignalRManager.swift
//  TPG2
//
//  Created by Geniew on 27.10.2023.
//

import Foundation
import SignalRClient
import Combine

class SignalRManager: ObservableObject {

    @Published var quotes: [Quote] = []
    @Published var symbolGroups: [SymbolGroup] = []
    @Published var isLoading: Bool = true
    @Published var symbolsArray: [Symbol] = []
    
    var symbols : Set<String> = []
    var loginViewModel = LoginViewModel()
    public var initialSymbolGroups: [SymbolGroup] = []
    private let serverUrl = ConfigurationManager.shared.signalRBaseURL
    private let token = Auth.shared.getCredentials().accessToken!
    private var hubConnection: HubConnection?
    
    init() {
        hubConnection = HubConnectionBuilder(url: URL(string: serverUrl)!)
            .withPermittedTransportTypes(.webSockets)
            .withHttpConnectionOptions(configureHttpOptions: { (httpConnectionOptions) in
                httpConnectionOptions.accessTokenProvider = { return self.token }
            })
            .withLogging(minLogLevel: .error)
            .withAutoReconnect()
            .build()
        Task {
            await executeLogin()
            await connectToHub()
        }
    }
    
    func executeLogin() async {
        
         loginViewModel.accountActualization(completionHandler: {[weak self] data, error in
             if let symbols = data?.symbols {
                 self?.symbolsArray = symbols
                 for item in symbols {
                     self?.symbols.insert(item.name)
                 }
             }
             if let symbolGroup = data?.symbolGroups {
                 for item in symbolGroup{
                     self?.handleReceivedSymbolGroup(item)
                 }
             }
        })
       }
    
    func connectToHub() async {
        hubConnection?.on(method: "ReceiveSingleQuote") {[weak self] argumentExtractor in
            do {
                let quote = try argumentExtractor.getArgument(type: Quote.self)
                self?.isLoading = false
                self?.handleReceivedQuote(quote)
            } catch {
                print("❗️ \(error.localizedDescription)")
            }
        }
       
//        hubConnection.on(method: "OnAccountUpdate") { argumentExtractor in
//            do {
//                let account = try argumentExtractor.getArgument(type: Account.self)
//            } catch {
//                print("❗️ \(error.localizedDescription)")
//            }
//        }
        
        hubConnection?.on(method: "OnSymbolGroupUpdate") {[weak self] argumentExtractor in
            do {
                let symbolGroup = try argumentExtractor.getArgument(type: SymbolGroup.self)
                self?.handleReceivedSymbolGroup(symbolGroup)
            } catch {
                print("❗️ \(error.localizedDescription)")
            }
        }
    
        hubConnection?.on(method: "OnSingleSymbolAdd") { argumentExtractor in
            do {
                let symbol = try argumentExtractor.getArgument(type: Symbol.self)
            } catch {
                print("❗️ \(error.localizedDescription)")
            }
        }
        
        hubConnection?.on(method: "OnSingleSymbolUpdate") { argumentExtractor in
            do {
                let symbolUpdated = try argumentExtractor.getArgument(type: Symbol.self)
            } catch {
                print("❗️ \(error.localizedDescription)")
            }
        }
        
        hubConnection?.start()
       
        // TODO: Investigate GCD
  
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: .init(block: {
            let symbols = Array(self.symbols)
            self.hubConnection?.invoke(method: "AddToGroup", symbols) { error in
                        guard let error = error else { return }
                        print("❗️ \(error.localizedDescription)")
                    }
        }))
    }
  
    func handleReceivedQuote(_ newQuote: Quote) {
        DispatchQueue.main.async {
            if let existingIndex = self.quotes.firstIndex(where: { $0.id == newQuote.id }) {
                self.quotes[existingIndex] = newQuote
            } else {
                self.quotes.append(newQuote)
            }
            self.quotes.sort { $0.symbol ?? "" < $1.symbol ?? "" }
        }
    }


    func handleReceivedSymbolGroup(_ newSymbolGroup: SymbolGroup) {
        DispatchQueue.main.async {
            if let existingIndex = self.initialSymbolGroups.firstIndex(where: { $0._id == newSymbolGroup._id }) {
                self.initialSymbolGroups[existingIndex] = newSymbolGroup
            } else {
                self.initialSymbolGroups.append(newSymbolGroup)
            }
        
            self.initialSymbolGroups.sort { $0.order ?? 0 < $1.order ?? 0 }
        }
    }
    
    private func handleMessage(_ message: String, from user: String) {
        print(message.debugDescription)
    }
}
