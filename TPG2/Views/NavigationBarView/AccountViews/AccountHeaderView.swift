//
//  AccountHeaderView.swift
//  TPG2
//
//  Created by Geniew on 25.12.2023.
//

import SwiftUI

enum AccountHeaderItems: Int, CaseIterable {
    
    case myAccount
    case finance
    case uploadDocuments
    case tradingHistory
    case contactUs
    case notifications
    case logOut
   
    var title: String {
        switch self {
        case .myAccount:
            return Translations.myAccount
        case .finance:
            return Translations.finance
        case .uploadDocuments:
            return Translations.uploadDocuments
        case .tradingHistory:
            return Translations.tradingHistory
        case .contactUs:
            return Translations.contactUs
        case .notifications:
            return Translations.notifications
        case .logOut:
            return Translations.logOut
        }
    }
    
    var icon: Image {
        switch self {
        case .myAccount:
            return Image(.icoPersonalData)
        case .finance:
            return Image(.icoWithdraw)
        case .uploadDocuments:
            return Image(.icoUpload)
        case .tradingHistory:
            return Image(.icoTrading)
        case .contactUs:
            return Image(.icoContact)
        case .notifications:
            return Image(.icoNotification)
        case .logOut:
            return Image(.icoLogout)
        }
    }
}

struct AccountHeaderView: View {
    var body: some View {
           NavigationView {
               List {
                   ForEach(AccountHeaderItems.allCases, id: \.self) { item in
                       NavigationLink(destination: DetailView(item: item)) {
                           HStack {
                               item.icon
                                   .resizable()
                                   .frame(width: 24, height: 24)
                               Text(item.title)
                           }
                           .onTapGesture {
                                              // Handle the tap on the item
                                              handleItemTap(item)
                                          }
                       }
                   }
               }
               .listStyle(.plain)
           }
       }
    
    func handleItemTap(_ item: AccountHeaderItems) {
          // Handle the tap on the item
          print("Tapped on \(item.title)")
      }
}

struct DetailView: View {
    let item: AccountHeaderItems

    var body: some View {
        VStack {
            item.icon
                .resizable()
                .frame(width: 100, height: 100)
            Text(item.title)
                .font(.title)
        }
        .navigationTitle(item.title)
    }
}

#Preview {
    AccountHeaderView()
}
