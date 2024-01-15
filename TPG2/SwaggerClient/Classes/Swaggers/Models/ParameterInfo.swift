//
// ParameterInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ParameterInfo: Codable {

    public var member: MemberInfo?
    public var name: String?
    public var position: Int?
    public var isIn: Bool?
    public var isLcid: Bool?
    public var isOptional: Bool?
    public var isOut: Bool?
    public var isRetval: Bool?
    public var hasDefaultValue: Bool?
    public var customAttributes: [CustomAttributeData]?
    public var metadataToken: Int?

    public init(member: MemberInfo? = nil, name: String? = nil, position: Int? = nil, isIn: Bool? = nil, isLcid: Bool? = nil, isOptional: Bool? = nil, isOut: Bool? = nil, isRetval: Bool? = nil, hasDefaultValue: Bool? = nil, customAttributes: [CustomAttributeData]? = nil, metadataToken: Int? = nil) {
        self.member = member
        self.name = name
        self.position = position
        self.isIn = isIn
        self.isLcid = isLcid
        self.isOptional = isOptional
        self.isOut = isOut
        self.isRetval = isRetval
        self.hasDefaultValue = hasDefaultValue
        self.customAttributes = customAttributes
        self.metadataToken = metadataToken
    }


}