//
// TradingHoursInterval.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TradingHoursInterval: Codable {

    public var start: String?
    public var close: String?

    public init(start: String? = nil, close: String? = nil) {
        self.start = start
        self.close = close
    }


}
