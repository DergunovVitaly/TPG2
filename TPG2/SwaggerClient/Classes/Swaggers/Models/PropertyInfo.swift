//
// PropertyInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PropertyInfo: Codable {

    public var name: String?
    public var module: Module?
    public var customAttributes: [CustomAttributeData]?
    public var isCollectible: Bool?
    public var metadataToken: Int?
    public var isSpecialName: Bool?
    public var canRead: Bool?
    public var canWrite: Bool?
    public var getMethod: MethodInfo?
    public var setMethod: MethodInfo?

    public init(name: String? = nil, module: Module? = nil, customAttributes: [CustomAttributeData]? = nil, isCollectible: Bool? = nil, metadataToken: Int? = nil, isSpecialName: Bool? = nil, canRead: Bool? = nil, canWrite: Bool? = nil, getMethod: MethodInfo? = nil, setMethod: MethodInfo? = nil) {
        self.name = name
        self.module = module
        self.customAttributes = customAttributes
        self.isCollectible = isCollectible
        self.metadataToken = metadataToken
        self.isSpecialName = isSpecialName
        self.canRead = canRead
        self.canWrite = canWrite
        self.getMethod = getMethod
        self.setMethod = setMethod
    }
}
