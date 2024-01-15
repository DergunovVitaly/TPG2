//
//  TPG2App.swift
//  TPG2
//
//  Created by Geniew on 28.09.2023.
//

import SwiftUI
import SwiftData

@main
struct TPG2App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
        #if DEBUG
            AppMode.currentMode = .dev
        #else
            AppMode.currentMode = .live
        #endif
            debugPrint("APP MODE: 🪐", AppMode.currentMode.rawValue)
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    @ObservedObject var router = Router()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                SplashScreenView()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
//                        case .quotes:
//                            QuotesView()
                        case .quoteRow(let quote):
                            QuoteViewRow(quote: quote)
                        }
                    }
            }
            .preferredColorScheme(.light)
            .environmentObject(router)
            .environmentObject(Auth.shared)
            .withErrorHandling()
            .modelContainer(sharedModelContainer)
        }
    }
}
