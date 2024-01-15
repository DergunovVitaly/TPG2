//
//  DataStorageService.swift
//  TPG2
//
//  Created by Geniew on 25.10.2023.
//

import Foundation

enum DataStorageType: String {
    
    case isFirstAppRun /* Do not remove this value */
    // Development only //
    case appMode
    case isLaunch
}

final class DataStorageService {
    static func save(dataType: DataStorageType, value: Any?) {
        UserDefaults.standard.set(value, forKey: dataType.rawValue)
        UserDefaults.standard.synchronize()
    }

    static func load<T>(dataType: DataStorageType) -> T? {
        return UserDefaults.standard.object(forKey: dataType.rawValue) as? T
    }

    static func delete(dataType: DataStorageType) {
        UserDefaults.standard.removeObject(forKey: dataType.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    static func deleteMultiple(dataTypes: [DataStorageType]) {
        for type in dataTypes {
            UserDefaults.standard.removeObject(forKey: type.rawValue)
        }
        UserDefaults.standard.synchronize()
    }

    static func removeStoredData() {
        deleteMultiple(dataTypes: [
            
        ])
    }
}

enum AppMode: String {
    case dev
    case live
    
    static var currentMode: AppMode {
        get {
            guard let modeString: String = DataStorageService.load(dataType: .appMode),
                  let mode = AppMode(rawValue: modeString) else {
                return .dev
            }
            return mode
        }
        set {
            DataStorageService.save(dataType: .appMode, value: newValue.rawValue)
        }
    }
}
