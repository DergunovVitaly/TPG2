//
//  SplashScreenView.swift
//  TPG2
//
//  Created by Geniew on 04.10.2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var selectedTab: Tabs = .quotes
    @State var isActive: Bool = false
    @EnvironmentObject var auth: Auth
    
    var body: some View {
        ZStack{
            if self.isActive {
                if auth.loggedIn {
                    TabBar(selectedTab: $selectedTab)
                } else {
                    LoginView()
                }
            } else {
            Color.ctaPressedSecondary.ignoresSafeArea()
            Image(.loader)
                .resizable()
                .scaledToFill()
                .frame(width:100, height: 100)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
