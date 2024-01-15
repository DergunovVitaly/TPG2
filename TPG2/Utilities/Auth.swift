//
//  Auth.swift
//  TPG2
//
//  Created by Geniew on 26.10.2023.
//

import Foundation

class Auth: ObservableObject {
    
    struct Credentials {
        var accessToken: String?
        var refreshToken: String?
    }
    
    enum KeychainKey: String {
        case accessToken
        case refreshToken
    }
    
    static let shared: Auth = Auth()
    
    @Published var loggedIn: Bool = false
    
    private init() {
        loggedIn = hasAccessToken()
    }
    
    func getCredentials() -> Credentials {
        return Credentials(
            accessToken: SecureDataStorageService.load(dataType: .token),
            refreshToken: SecureDataStorageService.load(dataType: .refreshToken)
        )
    }
    
    func setCredentials(accessToken: String, refreshToken: String) {
        SecureDataStorageService.save(dataType: .token, value: accessToken)
        SecureDataStorageService.save(dataType: .refreshToken, value: refreshToken)
        loggedIn = true
    }
    
    func hasAccessToken() -> Bool {
        if let token = getCredentials().accessToken, !token.isEmpty {
            return true
        }
        return false
    }
    
    func getAccessToken() -> String? {
        return getCredentials().accessToken
    }

    func getRefreshToken() -> String? {
        return getCredentials().refreshToken
    }

    func logout() {
        SecureDataStorageService.delete(dataType: .refreshToken)
        SecureDataStorageService.delete(dataType: .token)
        SecureDataStorageService.removeStoredData()
        setCredentials(accessToken: "", refreshToken: "")
        loggedIn = false
    }
}
