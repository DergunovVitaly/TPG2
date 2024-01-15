//
// SymbolTemplate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SymbolTemplate: Codable {

    public var _id: UUID?
    public var groupId: Int64?
    public var name: String?
    public var displayName: String?
    public var _description: String?
    public var threeDaysSwap: Int?
    public var spreadType: Int?
    public var spreadBid: Int?
    public var spreadAsk: Int?
    public var spreadMin: Int?
    public var spreadMax: Int?
    public var swapCurrency: Int?
    public var swapLong: Double?
    public var swapShort: Double?
    public var stopLevel: Int?
    public var digits: Int?
    public var gapLevel: Int?
    public var calculationMode: Int?
    public var contractSize: Int?
    public var commission: Double?
    public var commissionCurrency: Int?
    public var commissionType: Int?
    public var commissionEntry: Bool?
    public var leverage: Int?
    public var symbolGroup: Int64?
    public var tradingHoursId: Int?
    public var marginHedge: Double?
    public var minimalVolume: Double?
    public var maximalVolume: Double?
    public var volumeStep: Double?
    public var units: String?
    public var marginCurrency: String?
    public var profitCurrency: String?
    public var tradeForbidden: Bool?
    public var hidden: Bool?
    public var expirationDate: Date?
    public var disabled: Bool?
    public var negativeSpread: Bool?
    public var groupCurrency: String?
    public var profitRateFirstSymbolName: String?
    public var profitRateSecondSymbolName: String?
    public var profitRateCalculationType: Int?
    public var marginRateFirstSymbolName: String?
    public var marginRateSecondSymbolName: String?
    public var marginRateCalculationType: Int?
    public var image: String?
    public var lastModifiedDate: Date?

    public init(_id: UUID? = nil, groupId: Int64? = nil, name: String? = nil, displayName: String? = nil, _description: String? = nil, threeDaysSwap: Int? = nil, spreadType: Int? = nil, spreadBid: Int? = nil, spreadAsk: Int? = nil, spreadMin: Int? = nil, spreadMax: Int? = nil, swapCurrency: Int? = nil, swapLong: Double? = nil, swapShort: Double? = nil, stopLevel: Int? = nil, digits: Int? = nil, gapLevel: Int? = nil, calculationMode: Int? = nil, contractSize: Int? = nil, commission: Double? = nil, commissionCurrency: Int? = nil, commissionType: Int? = nil, commissionEntry: Bool? = nil, leverage: Int? = nil, symbolGroup: Int64? = nil, tradingHoursId: Int? = nil, marginHedge: Double? = nil, minimalVolume: Double? = nil, maximalVolume: Double? = nil, volumeStep: Double? = nil, units: String? = nil, marginCurrency: String? = nil, profitCurrency: String? = nil, tradeForbidden: Bool? = nil, hidden: Bool? = nil, expirationDate: Date? = nil, disabled: Bool? = nil, negativeSpread: Bool? = nil, groupCurrency: String? = nil, profitRateFirstSymbolName: String? = nil, profitRateSecondSymbolName: String? = nil, profitRateCalculationType: Int? = nil, marginRateFirstSymbolName: String? = nil, marginRateSecondSymbolName: String? = nil, marginRateCalculationType: Int? = nil, image: String? = nil, lastModifiedDate: Date? = nil) {
        self._id = _id
        self.groupId = groupId
        self.name = name
        self.displayName = displayName
        self._description = _description
        self.threeDaysSwap = threeDaysSwap
        self.spreadType = spreadType
        self.spreadBid = spreadBid
        self.spreadAsk = spreadAsk
        self.spreadMin = spreadMin
        self.spreadMax = spreadMax
        self.swapCurrency = swapCurrency
        self.swapLong = swapLong
        self.swapShort = swapShort
        self.stopLevel = stopLevel
        self.digits = digits
        self.gapLevel = gapLevel
        self.calculationMode = calculationMode
        self.contractSize = contractSize
        self.commission = commission
        self.commissionCurrency = commissionCurrency
        self.commissionType = commissionType
        self.commissionEntry = commissionEntry
        self.leverage = leverage
        self.symbolGroup = symbolGroup
        self.tradingHoursId = tradingHoursId
        self.marginHedge = marginHedge
        self.minimalVolume = minimalVolume
        self.maximalVolume = maximalVolume
        self.volumeStep = volumeStep
        self.units = units
        self.marginCurrency = marginCurrency
        self.profitCurrency = profitCurrency
        self.tradeForbidden = tradeForbidden
        self.hidden = hidden
        self.expirationDate = expirationDate
        self.disabled = disabled
        self.negativeSpread = negativeSpread
        self.groupCurrency = groupCurrency
        self.profitRateFirstSymbolName = profitRateFirstSymbolName
        self.profitRateSecondSymbolName = profitRateSecondSymbolName
        self.profitRateCalculationType = profitRateCalculationType
        self.marginRateFirstSymbolName = marginRateFirstSymbolName
        self.marginRateSecondSymbolName = marginRateSecondSymbolName
        self.marginRateCalculationType = marginRateCalculationType
        self.image = image
        self.lastModifiedDate = lastModifiedDate
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case groupId
        case name
        case displayName
        case _description = "description"
        case threeDaysSwap
        case spreadType
        case spreadBid
        case spreadAsk
        case spreadMin
        case spreadMax
        case swapCurrency
        case swapLong
        case swapShort
        case stopLevel
        case digits
        case gapLevel
        case calculationMode
        case contractSize
        case commission
        case commissionCurrency
        case commissionType
        case commissionEntry
        case leverage
        case symbolGroup
        case tradingHoursId
        case marginHedge
        case minimalVolume
        case maximalVolume
        case volumeStep
        case units
        case marginCurrency
        case profitCurrency
        case tradeForbidden
        case hidden
        case expirationDate
        case disabled
        case negativeSpread
        case groupCurrency
        case profitRateFirstSymbolName
        case profitRateSecondSymbolName
        case profitRateCalculationType
        case marginRateFirstSymbolName
        case marginRateSecondSymbolName
        case marginRateCalculationType
        case image
        case lastModifiedDate
    }

}