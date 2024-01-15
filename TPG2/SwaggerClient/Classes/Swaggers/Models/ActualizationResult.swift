//
// ActualizationResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ActualizationResult: Codable {

    public var client: Client?
    public var symbols: [Symbol]?
    public var symbolGroups: [SymbolGroup]?
    public var positions: [Position]?
    public var orders: [Order]?
    public var tradingHours: [TradingHours]?
    public var tradingHoursHolidays: [TradingHoursHolidays]?
    public var previousDayLatestQuotes: [Quote]?
    public var latestQuotes: [Quote]?

    public init(client: Client? = nil, symbols: [Symbol]? = nil, symbolGroups: [SymbolGroup]? = nil, positions: [Position]? = nil, orders: [Order]? = nil, tradingHours: [TradingHours]? = nil, tradingHoursHolidays: [TradingHoursHolidays]? = nil, previousDayLatestQuotes: [Quote]? = nil, latestQuotes: [Quote]? = nil) {
        self.client = client
        self.symbols = symbols
        self.symbolGroups = symbolGroups
        self.positions = positions
        self.orders = orders
        self.tradingHours = tradingHours
        self.tradingHoursHolidays = tradingHoursHolidays
        self.previousDayLatestQuotes = previousDayLatestQuotes
        self.latestQuotes = latestQuotes
    }
}
