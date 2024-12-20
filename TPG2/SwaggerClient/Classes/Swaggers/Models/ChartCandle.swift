//
// ChartCandle.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChartCandle: Codable {

    public var date: Date?
    public var openBid: Double?
    public var closeBid: Double?
    public var highBid: Double?
    public var lowBid: Double?
    public var openAsk: Double?
    public var closeAsk: Double?
    public var highAsk: Double?
    public var lowAsk: Double?
    public var volume: Int?

    public init(date: Date? = nil, openBid: Double? = nil, closeBid: Double? = nil, highBid: Double? = nil, lowBid: Double? = nil, openAsk: Double? = nil, closeAsk: Double? = nil, highAsk: Double? = nil, lowAsk: Double? = nil, volume: Int? = nil) {
        self.date = date
        self.openBid = openBid
        self.closeBid = closeBid
        self.highBid = highBid
        self.lowBid = lowBid
        self.openAsk = openAsk
        self.closeAsk = closeAsk
        self.highAsk = highAsk
        self.lowAsk = lowAsk
        self.volume = volume
    }


}
