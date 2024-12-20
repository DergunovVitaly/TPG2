//
// BecomeFollowerModelBaseCreateApiRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BecomeFollowerModelBaseCreateApiRequest: Codable {

    public var requestId: String?
    public var ip: String?
    public var userName: String?
    public var fields: [String:String]?
    public var object: BecomeFollowerModel?

    public init(requestId: String? = nil, ip: String? = nil, userName: String? = nil, fields: [String:String]? = nil, object: BecomeFollowerModel? = nil) {
        self.requestId = requestId
        self.ip = ip
        self.userName = userName
        self.fields = fields
        self.object = object
    }


}
