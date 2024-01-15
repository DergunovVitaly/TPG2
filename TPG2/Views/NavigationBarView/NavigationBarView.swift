//
//  NavigationBarView.swift
//  TPG2
//
//  Created by Geniew on 19.12.2023.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: Propertyes
    @ObservedObject var loginViewModel = LoginViewModel()
    @EnvironmentObject var errorHandling: ErrorHandling
    @State var isActiveDepositView: Bool = false
    @State var isActiveAcountView: Bool = false
    // MARK: Body
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(.logo1)
                    .frame(width: 82, height: 24)
                Spacer()
                DepositHeaderView(isActive: $isActiveDepositView)
                    .onTapGesture {
                        isActiveAcountView = false
                        isActiveDepositView.toggle()
                    }
                Spacer()
                AccountNavBarView(isActive: $isActiveAcountView)
                    .onTapGesture {
                        isActiveDepositView = false
                        isActiveAcountView.toggle()
                    }
            } //: HStack
            .padding(12)
            .padding(.trailing, -24)
            if isActiveDepositView {
                ExpandebleDepositView()
            }
            
            if isActiveAcountView {
                AccountHeaderView()
            }
        }
        .onAppear {
            loginViewModel.accountActualization(completionHandler: { data, error in
                guard error == nil else {
                    errorHandling.handle(error: error!)
                    return }
            })
        }
    }
}


#Preview {
    NavigationBarView()
        .previewLayout(.sizeThatFits)
}
