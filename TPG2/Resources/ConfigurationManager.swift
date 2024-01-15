//
//  ConfigurationManager.swift
//  TPG2
//
//  Created by Geniew on 24.10.2023.
//
import Foundation

class ConfigurationManager {
    static let shared = ConfigurationManager()

    var api = ""
    var testUser1: (password: String, login: String) = ("", "")
    var signalRBaseURL = ""
    
    private init() {
        // Load and initialize your property list values here
        loadPropertyList()
    }

    // Add your property list values as properties of this singleton
    var propertyListData: [String: Any] = [:]

    private func loadPropertyList() {
        if let path = Bundle.main.path(forResource: "Configuration", ofType: "plist"),
            let xml = FileManager.default.contents(atPath: path) {
            do {
                let plistData = try PropertyListSerialization.propertyList(from: xml, options: [], format: nil)
                if let plist = plistData as? [String: Any] {
                    propertyListData = plist
                }
            } catch {
                print("Error loading property list: \(error)")
            }
        }
        
        if let api = propertyListData["api"] as? String {
            self.api = api
        }
        
        if let signalRBaseURL = propertyListData["signalRBaseURL"] as? String {
            self.signalRBaseURL = signalRBaseURL
        }
        
        if let testUser1Passowrd = propertyListData["testUser1Password"] as? String, let testUser1Login = propertyListData["testUser1Login"] as? String {
            self.testUser1.login = testUser1Login
            self.testUser1.password = testUser1Passowrd
        }
    }
    
}
