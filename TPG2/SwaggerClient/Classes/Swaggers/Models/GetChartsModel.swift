//
// GetChartsModel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct GetChartsModel: Codable {

    public var symbol: String?
    public var period: Int?
    public var startDate: Date?
    public var endDate: Date?

    public init(symbol: String? = nil, period: Int? = nil, startDate: Date? = nil, endDate: Date? = nil) {
        self.symbol = symbol
        self.period = period
        self.startDate = startDate
        self.endDate = endDate
    }


}
