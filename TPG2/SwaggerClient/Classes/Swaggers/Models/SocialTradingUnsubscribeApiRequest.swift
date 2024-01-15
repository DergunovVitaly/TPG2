//
// SocialTradingUnsubscribeApiRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SocialTradingUnsubscribeApiRequest: Codable {

    public var subscriberAccountId: Int64
    public var proAccountUsername: String

    public init(subscriberAccountId: Int64, proAccountUsername: String) {
        self.subscriberAccountId = subscriberAccountId
        self.proAccountUsername = proAccountUsername
    }


}
