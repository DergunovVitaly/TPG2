//
//  SecureDataStorageService.swift
//  TPG2
//
//  Created by Geniew on 25.10.2023.
//

import KeychainSwift

enum SecureDataStorageType: String {
    case token
    case refreshToken
}

final class SecureDataStorageService {
    /// Save data to keychain store. You can only store string and boolean values
    ///
    /// - Parameters:
    ///   - dataType: type of storage
    ///   - value: value to store
    static func save(dataType: SecureDataStorageType, value: Any?) {
        let keychain = KeychainSwift()
        keychain.synchronizable = true
        if let stringValue = value as? String {
            keychain.set(stringValue, forKey: dataType.rawValue)
        }
        if let booleanValue = value as? Bool {
            keychain.set(booleanValue, forKey: dataType.rawValue)
        }
    }

    /// Load value from keychain store
    ///
    /// - Parameter dataType: type of store item
    /// - Returns: value for desired type
    static func load<T>(dataType: SecureDataStorageType) -> T? {
        let keychain = KeychainSwift()
        keychain.synchronizable = true
        return keychain.get(dataType.rawValue) as? T
    }

    /// Delete desired type from keychain
    ///
    /// - Parameter dataType: type to delete from keychain
    static func delete(dataType: SecureDataStorageType) {
        KeychainSwift().delete(dataType.rawValue)
    }
    
    static func removeStoredData() {
        KeychainSwift().clear()
    }
}
