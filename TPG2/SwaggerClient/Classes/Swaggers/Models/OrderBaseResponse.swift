//
// OrderBaseResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OrderBaseResponse: Codable {

    public var result: Order?
    public var isSuccessed: Bool?
    public var errorMessage: String?
    public var code: Int?
    public var errors: [String:String]?

    public init(result: Order? = nil, isSuccessed: Bool? = nil, errorMessage: String? = nil, code: Int? = nil, errors: [String:String]? = nil) {
        self.result = result
        self.isSuccessed = isSuccessed
        self.errorMessage = errorMessage
        self.code = code
        self.errors = errors
    }


}
