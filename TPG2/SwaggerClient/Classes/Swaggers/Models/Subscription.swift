//
// Subscription.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Subscription: Codable {

    public var _id: Int64?
    public var proTraderTpAccountId: Int64?
    public var subscriberAccountId: Int64?
    public var status: Int?
    public var invested: Double?
    public var followFrom: Date?
    public var endDate: Date?
    public var closePL: Double?
    public var openPL: Double?
    public var stopLevel: Int?
    public var currentValue: Double?
    public var commissionPaid: Double?
    public var available: Double?
    public var numberOfTrades: Int?
    public var copyPercentage: Int?
    public var proTraderCurrency: String?
    public var subscriberCurrency: String?

    public init(_id: Int64? = nil, proTraderTpAccountId: Int64? = nil, subscriberAccountId: Int64? = nil, status: Int? = nil, invested: Double? = nil, followFrom: Date? = nil, endDate: Date? = nil, closePL: Double? = nil, openPL: Double? = nil, stopLevel: Int? = nil, currentValue: Double? = nil, commissionPaid: Double? = nil, available: Double? = nil, numberOfTrades: Int? = nil, copyPercentage: Int? = nil, proTraderCurrency: String? = nil, subscriberCurrency: String? = nil) {
        self._id = _id
        self.proTraderTpAccountId = proTraderTpAccountId
        self.subscriberAccountId = subscriberAccountId
        self.status = status
        self.invested = invested
        self.followFrom = followFrom
        self.endDate = endDate
        self.closePL = closePL
        self.openPL = openPL
        self.stopLevel = stopLevel
        self.currentValue = currentValue
        self.commissionPaid = commissionPaid
        self.available = available
        self.numberOfTrades = numberOfTrades
        self.copyPercentage = copyPercentage
        self.proTraderCurrency = proTraderCurrency
        self.subscriberCurrency = subscriberCurrency
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case proTraderTpAccountId
        case subscriberAccountId
        case status
        case invested
        case followFrom
        case endDate
        case closePL
        case openPL
        case stopLevel
        case currentValue
        case commissionPaid
        case available
        case numberOfTrades
        case copyPercentage
        case proTraderCurrency
        case subscriberCurrency
    }

}
