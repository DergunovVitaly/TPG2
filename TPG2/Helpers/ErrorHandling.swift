//
//  ErrorHandling.swift
//  TPG2
//
//  Created by Geniew on 15.11.2023.
//https://www.ralfebert.com/swiftui/generic-error-handling/

import Foundation
import SwiftUI

enum ValidationError: LocalizedError {
    case responseError

    var errorDescription: String? {
        switch self {
        case .responseError:
            return "Response error"
        }
    }
}

struct ErrorAlert: Identifiable {
    var id = UUID()
    var message: String
    var dismissAction: (() -> Void)?
}

class ErrorHandling: ObservableObject {
    @Published var currentAlert: ErrorAlert?

    func handle(error: Error) {
        currentAlert = ErrorAlert(message: error.localizedDescription)
    }
}

struct HandleErrorsByShowingAlertViewModifier: ViewModifier {
    @StateObject var errorHandling = ErrorHandling()

    func body(content: Content) -> some View {
        content
            .environmentObject(errorHandling)
            // Applying the alert for error handling using a background element
            // is a workaround, if the alert would be applied directly,
            // other .alert modifiers inside of content would not work anymore
            .background(
                EmptyView()
                    .alert(item: $errorHandling.currentAlert) { currentAlert in
                        Alert(
                            title: Text("Error"),
                            message: Text(currentAlert.message),
                            dismissButton: .default(Text("Ok")) {
                                currentAlert.dismissAction?()
                            }
                        )
                    }
            )
    }
}

//viewModel.login { result, error in
//    do {
//        try viewModel.validate()
//    } catch {
//        self.errorHandling.handle(error: error)
//    }
//    
//}
