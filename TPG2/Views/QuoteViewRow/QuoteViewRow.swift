//
//  QuoteViewRow.swift
//  TPG2
//
//  Created by Geniew on 28.11.2023.
//

import SwiftUI

struct QuoteViewRow: View {
    
    var quote: Quote
    let id = UUID()
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 10) {
                Image(.star)
                    .frame(width: 24, height: 24)
                
                FlagsImageView()
                
                VStack(alignment: .leading) {
                    HStack(spacing: 12) {
                        Text(quote.symbol ?? .empty)
                            .font(Font.custom("SF UI Display", size: 12))
                            .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                        
                        Text(String(quote.ask?.rounded(toPlaces: 2) ?? 0.0) + "%")
                            .font(Font.custom("SF UI Display", size: 10))
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Constants.GradientRealAccount)
                    }
                    
                    Text("This Dollars vs US Dollars ")
                        .font(Font.custom("SF UI Display", size: 10))
                        .foregroundColor(Color(red: 0.54, green: 0.55, blue: 0.69))
                }
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 1, height: 24)
                    .background(Color(red: 0.89, green: 0.9, blue: 0.93))
                
                Text(String(quote.ask?.rounded(toPlaces: 5) ?? 0.0).rounded(toLength: 7))
                    .font(Font.custom("SF UI Display", size: 12))
                    .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                    .frame(width: 50)
                
                Text(String(quote.bid?.rounded(toPlaces: 5) ?? 0.0).rounded(toLength: 7))
                    .font(Font.custom("SF UI Display", size: 12))
                    .foregroundColor(Color(red: 0.2, green: 0.18, blue: 0.29))
                    .frame(width: 50)
                
                Image("info_icon")
                    .frame(width: 24, height: 24)
                
            }
            .frame(width: UIScreen.screenWidth + 14, height: 48)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: UIScreen.screenWidth + 14, height: 1)
                .background(Color(red: 0.89, green: 0.9, blue: 0.93))
        }
    }
}


#Preview {
    QuoteViewRow(quote: Quote(id: "Test", symbol: "Test", date: "Test date", ask: 0.7, bid: 7.7))
}

