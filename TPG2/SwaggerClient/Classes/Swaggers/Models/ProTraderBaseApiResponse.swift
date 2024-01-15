//
// ProTraderBaseApiResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ProTraderBaseApiResponse: Codable {

    public var result: ProTrader?
    public var code: Int?
    public var isSuccessed: Bool?
    public var errorMessage: String?
    public var errors: [String:String]?

    public init(result: ProTrader? = nil, code: Int? = nil, isSuccessed: Bool? = nil, errorMessage: String? = nil, errors: [String:String]? = nil) {
        self.result = result
        self.code = code
        self.isSuccessed = isSuccessed
        self.errorMessage = errorMessage
        self.errors = errors
    }


}
