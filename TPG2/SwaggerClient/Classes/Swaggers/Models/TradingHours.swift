//
// TradingHours.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct TradingHours: Codable {

    public var _id: Int64?
    public var name: String?
    public var intervals: [[TradingHoursInterval]]?

    public init(_id: Int64? = nil, name: String? = nil, intervals: [[TradingHoursInterval]]? = nil) {
        self._id = _id
        self.name = name
        self.intervals = intervals
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case intervals
    }

}
