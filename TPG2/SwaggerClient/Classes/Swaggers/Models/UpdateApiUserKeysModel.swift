//
// UpdateApiUserKeysModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UpdateApiUserKeysModel: Codable {

    public var userName: String
    public var idToken: String
    public var signatureKey: String

    public init(userName: String, idToken: String, signatureKey: String) {
        self.userName = userName
        self.idToken = idToken
        self.signatureKey = signatureKey
    }


}
