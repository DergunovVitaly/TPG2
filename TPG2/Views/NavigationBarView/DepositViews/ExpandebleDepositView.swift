//
//  ExpandebleDepositView.swift
//  TPG2
//
//  Created by Geniew on 21.12.2023.
//

import SwiftUI

struct ExpandebleDepositView: View {
    var body: some View {
        VStack(spacing: 0) {
            ExpandebleDepositHeaderView()
            ExpandebleDepositAmountView()
        }
    }
}

struct ExpandebleDepositHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image(.frame)
                    .frame(width: 18, height: 18)
                Text("Real Account")
                    .font(
                        Font.custom("SF UI Display", size: 14)
                            .weight(.semibold)
                    )
                    .foregroundColor(.white)
                Spacer()
                
                HStack(alignment: .center, spacing: 4) {
                    Image(.icoDeposit)
                        .frame(width: 20, height: 20)
                    
                    Text("DEPOSIT")
                        .font(
                            Font.custom("SF UI Display", size: 14)
                                .weight(.semibold)
                        )
                        .foregroundColor(Constants.GradientRealAccount)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .frame(width: 164, height: 40, alignment: .center)
                .background(.white)
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .inset(by: 0.5)
                        .stroke(Constants.GradientRealAccount, lineWidth: 1)
                )
            }
            .padding(24)
        }
        .foregroundColor(.clear)
        .frame(width: UIScreen.screenWidth, height: 72)
        .background(Constants.GradientRealAccount)
    }
}

struct ExpandebleDepositAmountView: View {
    var body: some View {
        VStack(spacing: 2) {
            HStack(spacing: 0) {
                Text("BALANCE:")
                  .font(Font.custom("SF UI Display", size: 12))
                  .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                Spacer()
                Text("PROFIT/LOSSES:")
                  .font(Font.custom("SF UI Display", size: 12))
                  .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
            }
            .padding(.leading)
            .padding(.trailing)// BALANCE PROFIT/LOSSES
            
            HStack {
                Text("$116,368.38")
                  .font(
                    Font.custom("SF UI Display", size: 14)
                      .weight(.semibold)
                  )
                  .foregroundColor(Constants.GradientRealAccount)
                Spacer()
                Text("-$1,212.13")
                  .font(
                    Font.custom("SF UI Display", size: 14)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.86, green: 0.29, blue: 0.19))
            }
            .padding(.leading)
            .padding(.trailing)//Ammount
            
            HStack(spacing: 0) {
                Text("OPEN PL:")
                  .font(Font.custom("SF UI Display", size: 12))
                  .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                Spacer()
                Text("CREDIT:")
                  .font(Font.custom("SF UI Display", size: 12))
                  .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
            }
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
            
            HStack {
                Text("$100,968.03")
                  .font(
                    Font.custom("SF UI Display", size: 14)
                      .weight(.semibold)
                  )
                  .foregroundColor(Constants.GradientRealAccount)
                Spacer()
                // H5
                Text("$251,102.01")
                  .font(
                    Font.custom("SF UI Display", size: 14)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
            }
            .padding(.leading)
            .padding(.trailing)//Ammount
            
            HStack(spacing: 0) {
                Text("EQUITY:")
                  .font(Font.custom("SF UI Display", size: 12))
                  .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                Spacer()
                Text("BONUS:")
                  .font(Font.custom("SF UI Display", size: 12))
                  .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
            }
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
            
            HStack {
                Text("$251,102.01")
                  .font(
                    Font.custom("SF UI Display", size: 14)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                Spacer()
             
                Text("$12.10")
                  .font(
                    Font.custom("SF UI Display", size: 14)
                      .weight(.semibold)
                  )
                  .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack {
                Text("Trading Information")
                  .font(Font.custom("SF UI Display", size: 12))
              .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                Spacer()
            }
            .padding(.leading)
            .padding(.top, 30)
              
            HStack {
        
                HStack(spacing: 4) {
                    Text("ID:")
                        .font(
                            Font.custom("SF UI Display", size: 10)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                    
                    
                    Text("101653")
                        .font(Font.custom("SF UI Display", size: 12))
                        .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                }
                Spacer()
                HStack(spacing: 4) {
                    Text("Currency:")
                        .font(
                            Font.custom("SF UI Display", size: 10)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                    
                    Text("USD")
                        .font(Font.custom("SF UI Display", size: 12))
                        .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                }
                
                Spacer()
                HStack(spacing: 4) {
                    Text("Leverage:")
                        .font(
                            Font.custom("SF UI Display", size: 10)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                    
                    // Text-12
                    Text("1:100")
                        .font(Font.custom("SF UI Display", size: 12))
                        .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                }
                Spacer()
                HStack(spacing: 4) {
                    Text("Stop out:")
                        .font(
                            Font.custom("SF UI Display", size: 10)
                                .weight(.semibold)
                        )
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                    
                    // Text-12
                    Text("20")
                        .font(Font.custom("SF UI Display", size: 12))
                        .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                }
                Spacer()
            }
            .padding(.leading)
            .padding(.top, 16)
//            .padding(.trailing)
            
        }
        .foregroundColor(.clear)
        .frame(width: UIScreen.screenWidth, height: 250)
        .background(Color(red: 0.95, green: 0.96, blue: 0.97))
        .cornerRadius(4)
        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 15)
    }
}

#Preview {
    ExpandebleDepositView()
        .previewLayout(.sizeThatFits)
}
