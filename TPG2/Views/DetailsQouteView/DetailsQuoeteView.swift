//
//  DetailsQuoeteView.swift
//  TPG2
//
//  Created by Geniew on 07.12.2023.
//

import SwiftUI

struct DetailsQuoeteView: View {
    
    var quote: Quote
    
    var body: some View {
        Text(quote.symbol ?? .empty)
    }
}

#Preview {
    DetailsQuoeteView(quote: Quote(id: "id&&", symbol: "BTC", date: "Date777", ask: 33, bid: 77))
}
