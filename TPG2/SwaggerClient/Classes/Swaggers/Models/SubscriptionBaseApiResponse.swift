//
// SubscriptionBaseApiResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SubscriptionBaseApiResponse: Codable {

    public var result: Subscription?
    public var code: Int?
    public var isSuccessed: Bool?
    public var errorMessage: String?
    public var errors: [String:String]?

    public init(result: Subscription? = nil, code: Int? = nil, isSuccessed: Bool? = nil, errorMessage: String? = nil, errors: [String:String]? = nil) {
        self.result = result
        self.code = code
        self.isSuccessed = isSuccessed
        self.errorMessage = errorMessage
        self.errors = errors
    }


}
