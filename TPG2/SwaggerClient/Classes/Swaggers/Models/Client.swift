//
// Client.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Client: Codable {

    public var _id: Int64?
    public var firstName: String?
    public var lastName: String?
    public var email: String?
    public var country: String?
    public var accountList: [Account]?
    public var signedInAccountId: Int64?
    public var image: String?

    public init(_id: Int64? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, country: String? = nil, accountList: [Account]? = nil, signedInAccountId: Int64? = nil, image: String? = nil) {
        self._id = _id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.country = country
        self.accountList = accountList
        self.signedInAccountId = signedInAccountId
        self.image = image
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case firstName
        case lastName
        case email
        case country
        case accountList
        case signedInAccountId
        case image
    }

}
