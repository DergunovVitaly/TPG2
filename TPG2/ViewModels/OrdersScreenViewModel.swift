//
//  OrdersScreenViewModel.swift
//  TPG2
//
//  Created by Geniew on 26.10.2023.
//

import Foundation

class OrdersScreenViewModel: ObservableObject {
   
    func logout() {
        Auth.shared.logout()
    }
}
