//
//  String+Extension.swift
//  TPG2
//
//  Created by Geniew on 07.12.2023.
//

import Foundation

extension String {
    static let empty = ""
        func rounded(toLength length: Int) -> String {
            let truncated = self.prefix(length)
            return String(truncated)
        }
}
