//
//  AccountNavBarView.swift
//  TPG2
//
//  Created by Geniew on 19.12.2023.
//

import SwiftUI


struct AccountNavBarView: View {
    // MARK: Properties
    @Binding var isActive: Bool
    
    // MARK: Body
    var body: some View {
        HStack {
                Image("account")
                    .frame(width: 38, height: 38)
                Image(isActive ? .icoArrowUp :  .icoArrow)
                        .frame(width: 18, height: 18)
            ZStack {
                Circle()
                    .fill(Color(red: 0.86, green: 0.29, blue: 0.19))
                    .frame(width: 13, height: 13)
                .offset(x: -45, y: -15)
                
                Text("!")
                  .font(Font.custom("SF UI Display", size: 10))
                  .kerning(0.15)
                  .foregroundColor(.white)
                  .frame(width: 4.5, height: 10.7, alignment: .topLeading)
                  .offset(x: -45, y: -15)
            }
        } //: HASTACK
    }
}
#Preview {
    AccountNavBarView(isActive: .constant(true))
}
