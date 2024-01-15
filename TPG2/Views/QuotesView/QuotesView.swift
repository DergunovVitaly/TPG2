//
//  QuotesView.swift
//  TPG2
//
//  Created by Geniew on 21.11.2023.
//

import SwiftUI

struct QuotesView: View {
    
    let backgroundGreyColor = Color(red: 0.95, green: 0.96, blue: 0.97)
    @State private var searchText: String = .empty
    @State private var isTyping = false
    @State private var selectedTabIndex: Int = 0
   
    @Binding var initialSymbolGroups: [SymbolGroup]
    @Binding var isLoading: Bool
    @Binding var quotes: [Quote]
    @Binding var symbols: [Symbol]
    
    var filteredQuotes: [Quote] {
        guard selectedTabIndex <    initialSymbolGroups.count else {
            print("Selected index out of bounds")
            return []
        }
        let selectedSymbolGroup = initialSymbolGroups[selectedTabIndex]
        let filtered = quotes.filter { quote in
            if let symbol = symbols.first(where: { $0.name == quote.symbol }) {
                let isMatch = symbol.symbolGroup == selectedSymbolGroup._id
                return isMatch
            } else {
                print("Quote symbol not found in symbols array")
                return false
            }
        }
        return filtered
    }
    
    var filteredSearchQuotes: [Quote] {
        if searchText.isEmpty {
            return filteredQuotes
        } else {
            return filteredQuotes.filter {
                $0.symbol?.lowercased().contains(searchText.lowercased()) ?? false
            }
        }
    }

    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Symbol Groups", selection: $selectedTabIndex) {
                                 ForEach(initialSymbolGroups.indices, id: \.self) { index in
                                     Text(initialSymbolGroups[index].name)
                                 }
                             }
                             .pickerStyle(SegmentedPickerStyle())

                ZStack {
                    TextField(Translations.search, text: $searchText, onEditingChanged: { editingChanged in
                        self.isTyping = editingChanged
                    })
                    .padding(.leading, 33)
                    .frame(width: 328, height: 40)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.97))
                    .cornerRadius(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.89, green: 0.9, blue: 0.93), lineWidth: 1))
                    .font(Font.custom("SF UI Display", size: 12))
                   
//                    if !isTyping {
                        Image(.icoSearch)
                            .frame(width: 18, height: 18)
                            .padding(.leading, -153)
//                    }
                   
                }
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: UIScreen.screenWidth + 14, height: 1)
                    .background(Color(red: 0.89, green: 0.9, blue: 0.93))
                
                List {
                    ForEach(Array(filteredSearchQuotes.enumerated()), id: \.element.id) { index, quote in
                        NavigationLink(destination: QuoteViewRow(quote: quote)) {
                            QuoteViewRow(quote: quote)
                                .background(index % 2 == 0 ? Color.white : backgroundGreyColor)
                        }
                        .listRowSeparatorTint(.clear)
                    }
                    .listRowInsets(EdgeInsets())
                }
                .scrollIndicators(ScrollIndicatorVisibility.hidden)
                .listStyle(.plain)
            }
        }
        
        .padding(.top, 64)
       
        if isLoading {
            GifImage()
        }
    }
}

