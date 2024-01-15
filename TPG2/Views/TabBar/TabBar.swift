//
//  TabBar.swift
//  TPG2
//
//  Created by Geniew on 21.11.2023.
//

import SwiftUI

enum Tabs: Int, Codable {
    case quotes = 0
    case charts = 1
    case addOreder = 2
    case orders = 3
    case more = 4
}

struct TabBar: View {
    
    @Binding var selectedTab: Tabs
    @EnvironmentObject var router: Router
    @ObservedObject var signalRmanager = SignalRManager()
  
    var body: some View {
        if $signalRmanager.isLoading.wrappedValue {
            ProgressView()
        } else {
            ZStack {
                switch selectedTab {
                case .quotes:
                    QuotesView(initialSymbolGroups: $signalRmanager.initialSymbolGroups, isLoading: $signalRmanager.isLoading, quotes: $signalRmanager.quotes, symbols: $signalRmanager.symbolsArray)
                case .charts:
                    ChartsView()
                case .addOreder:
                    AddOrderView()
                case .orders:
                    OrdersView()
                case .more:
                    MoreView()
                }
                
                VStack(spacing: 0) {
                    NavigationBarView()
                        .background(Color(red: 0.95, green: 0.96, blue: 0.97))
                        .frame(width: UIScreen.screenWidth)
                    Spacer()
                    HStack(alignment: .center) {
                        Spacer()
                        
                        Button {
                            selectedTab = .quotes
                        } label: {
                            if selectedTab == .quotes {
                                TabBarButton(isActive: true, buttonText: Translations.quotes, image: Image(.icoQuotes))
                            } else {
                                TabBarButton(isActive: false, buttonText: Translations.quotes, image: Image(.icoQuotes))
                            }
                            
                        }
                        Spacer()
                        
                        Button {
                            selectedTab = .charts
                        } label: {
                            if selectedTab == .charts {
                                TabBarButton(isActive: true, buttonText: Translations.charts, image: Image(.icoCandles))
                            } else {
                                TabBarButton(isActive: false, buttonText: Translations.charts, image: Image(.icoCandles))
                            }
                        }
                        
                        Button {
                            selectedTab = .addOreder
                        } label: {
                            if selectedTab == .addOreder {
                                
                            }
                            VStack(alignment: .center, spacing: 4) {
                                Image(.buySell)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70)
                                    .shadow(color: .black.opacity(0.24), radius: 5, x: 0, y: 0)
                                Rectangle()
                                    .frame(width: 100, height: 15)
                            }
                        }
                        
                        Button {
                            selectedTab = .orders
                        } label: {
                            if selectedTab == .orders {
                                TabBarButton(isActive: true, buttonText: Translations.orders, image: Image(.icoOrders))
                            } else {
                                TabBarButton(isActive: false, buttonText: Translations.orders, image: Image(.icoOrders))
                            }
                        }
                        Spacer()
                        
                        Button {
                            selectedTab = .more
                        } label: {
                            if selectedTab == .more {
                                TabBarButton(isActive: true, buttonText: Translations.more, image: Image(.icoCopyT))
                            } else {
                                TabBarButton(isActive: false, buttonText: Translations.more, image: Image(.icoCopyT))
                            }
                        }
                        Spacer()
                    }
                    .foregroundColor(.clear)
                    .frame(width: UIScreen.screenWidth , height: 50)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.97))
                }// VSTACK
                .frame(maxHeight: .infinity, alignment: .bottom)
            }// ZSTACK
        }
    }
}

#Preview {
    TabBar(selectedTab: .constant(.orders))
}
