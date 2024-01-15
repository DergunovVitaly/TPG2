//
//  LoginView.swift
//  TPG2
//
//  Created by Geniew on 04.10.2023.
//

import SwiftUI


struct LoginView: View {
    
    // MARK: - Propertiers
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 10.0) {
            WelcomeView()
        }
    }
}

#Preview {
    LoginView()
}
