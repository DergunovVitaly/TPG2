//
// IntervalsInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct IntervalsInfo: Codable {

    public var _id: Int64?
    public var workTimeEnabled: Bool?
    public var intervals: [TradingHoursInterval]?

    public init(_id: Int64? = nil, workTimeEnabled: Bool? = nil, intervals: [TradingHoursInterval]? = nil) {
        self._id = _id
        self.workTimeEnabled = workTimeEnabled
        self.intervals = intervals
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case workTimeEnabled
        case intervals
    }

}
