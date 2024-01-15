//
//  View+Extension.swift
//  TPG2
//
//  Created by Geniew on 15.11.2023.
//

import SwiftUI

extension View {
    func withErrorHandling() -> some View {
        modifier(HandleErrorsByShowingAlertViewModifier())
    }
}
