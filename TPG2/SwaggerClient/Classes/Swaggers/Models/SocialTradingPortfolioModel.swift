//
// SocialTradingPortfolioModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SocialTradingPortfolioModel: Codable {

    public var _id: Int64?
    public var username: String?
    public var country: String?
    public var gain: Double?
    public var riskLevel: Double?
    public var tradesAmount: Int?
    public var investedCapital: Double?
    public var activeFrom: Date?
    public var lastActive: Date?
    public var gainByMonth: [String:Double]?
    public var gainByYear: [String:Double]?
    public var successfulTrades: Double?
    public var profitRate: Double?
    public var averageProfit: Double?
    public var recentlyClosedTrades: [ClosedTradeModel]?
    public var openedTrades: [Position]?
    public var closedTradesPercentsBySymbolGroups: [String:Double]?
    public var openedTradesPercentsBySymbolGroups: [String:Double]?
    public var followersInvestedFunds: Double?
    public var followersAmount: Int?
    public var popularity: Int?
    public var image: String?

    public init(_id: Int64? = nil, username: String? = nil, country: String? = nil, gain: Double? = nil, riskLevel: Double? = nil, tradesAmount: Int? = nil, investedCapital: Double? = nil, activeFrom: Date? = nil, lastActive: Date? = nil, gainByMonth: [String:Double]? = nil, gainByYear: [String:Double]? = nil, successfulTrades: Double? = nil, profitRate: Double? = nil, averageProfit: Double? = nil, recentlyClosedTrades: [ClosedTradeModel]? = nil, openedTrades: [Position]? = nil, closedTradesPercentsBySymbolGroups: [String:Double]? = nil, openedTradesPercentsBySymbolGroups: [String:Double]? = nil, followersInvestedFunds: Double? = nil, followersAmount: Int? = nil, popularity: Int? = nil, image: String? = nil) {
        self._id = _id
        self.username = username
        self.country = country
        self.gain = gain
        self.riskLevel = riskLevel
        self.tradesAmount = tradesAmount
        self.investedCapital = investedCapital
        self.activeFrom = activeFrom
        self.lastActive = lastActive
        self.gainByMonth = gainByMonth
        self.gainByYear = gainByYear
        self.successfulTrades = successfulTrades
        self.profitRate = profitRate
        self.averageProfit = averageProfit
        self.recentlyClosedTrades = recentlyClosedTrades
        self.openedTrades = openedTrades
        self.closedTradesPercentsBySymbolGroups = closedTradesPercentsBySymbolGroups
        self.openedTradesPercentsBySymbolGroups = openedTradesPercentsBySymbolGroups
        self.followersInvestedFunds = followersInvestedFunds
        self.followersAmount = followersAmount
        self.popularity = popularity
        self.image = image
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case username
        case country
        case gain
        case riskLevel
        case tradesAmount
        case investedCapital
        case activeFrom
        case lastActive
        case gainByMonth
        case gainByYear
        case successfulTrades
        case profitRate
        case averageProfit
        case recentlyClosedTrades
        case openedTrades
        case closedTradesPercentsBySymbolGroups
        case openedTradesPercentsBySymbolGroups
        case followersInvestedFunds
        case followersAmount
        case popularity
        case image
    }

}