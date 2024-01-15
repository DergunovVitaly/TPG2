//
//  DepositHeaderView.swift
//  TPG2
//
//  Created by Geniew on 19.12.2023.
//

import SwiftUI

struct DepositHeaderView: View {
    // MARK: Properties
    @Binding var isActive: Bool
   
    // MARK: Body
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 130, height: 40)
                .background(.white)
                .cornerRadius(4)// RECTANGLE
            VStack {
                HStack {
                    Text("FREE:")
                        .font(Font.custom("SF UI Display", size: 12))
                        .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                    
                    Text("%100'000")
                        .font(
                            Font.custom("SF UI Display", size: 10)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Constants.GradientRealAccount)
                        .frame(width: 47, height: 11, alignment: .bottomTrailing)
                    
                }//HSTACK
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 90, height: 2)
                        .background(Constants.GradientRealAccount)
                        .cornerRadius(2)
                    Image(isActive ? .icoArrowUp :  .icoArrow)
                        .frame(width: 18, height: 18)
                        .padding(.leading, 110)
                }.padding(-10)
                
                Text("$1.118,820.71")
                    .font(
                        Font.custom("SF UI Display", size: 14)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
            }
        }
    }
}

#Preview {
    DepositHeaderView(isActive: .constant(true))
}
