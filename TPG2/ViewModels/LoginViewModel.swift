//
//  LoginViewModel.swift
//  TPG2
//
//  Created by Geniew on 23.10.2023.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var error: Error?
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var userData: ActualizationResult?
    
    func login(completionHandler: @escaping (AuthenticationResult?, Error?) -> Void) {
        
        let authenticationRequest: AuthenticationViewModel = AuthenticationViewModel(login: username, password: password, clientType: 0, useLongTimeRefreshToken: true)
        self.isLoading = true
        AuthenticationAPI.apiAuthenticationTokenPost(body: authenticationRequest) {[weak self] data, error in
            if let data = data {
                if  data.result?.token != nil {
                    Auth.shared.setCredentials(accessToken: (data.result?.token!)!, refreshToken: (data.result?.refreshToken!)!)
                }
                completionHandler(data.result, nil)
            } else {
                print("⁉️ \(error.debugDescription)")
                
                completionHandler(nil, error)
            }
            self?.isLoading = false
        }
    }
    
    func accountActualization(completionHandler: @escaping (ActualizationResult?, Error?) -> Void) {
        let actualizationRequest = AuthenticationAPI.apiAuthenticationAccountActualizationGetWithRequestBuilder()
        let token = Auth.shared.getAccessToken()
        actualizationRequest.headers = ["Authorization" : "Bearer \(token!)"]
        actualizationRequest.execute {[weak self] data, error in
            if let data = data {
                self?.userData = data.body?.result
                completionHandler(data.body?.result, nil)
            } else {
                print("⁉️ \(error.debugDescription)")
                completionHandler(nil, error)
            }
            self?.isLoading = false
        }
    }
    
    func validate() throws {
        if error != nil {
               throw ValidationError.responseError
           }
       }
}
