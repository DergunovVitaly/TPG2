//
//  Double+Extension.swift
//  TPG2
//
//  Created by Geniew on 26.12.2023.
//

import Foundation

extension Double {
    func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
