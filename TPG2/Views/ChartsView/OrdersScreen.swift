//
//  ChartsView.swift
//  TPG2
//
//  Created by Geniew on 26.10.2023.
//

import SwiftUI

struct ChartsView: View {
    
    @ObservedObject var viewModel: OrdersScreenViewModel = OrdersScreenViewModel()
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("OrdersScreen")
                .font(.system(size: 24, weight: .bold, design: .default))
            
            Spacer()
            
            Button(
                action: viewModel.logout,
                label: {
                    Text("Logout")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            )
            
//            Button(
//                action: viewModel.connectToHub,
//                label: {
//                    Text("Connect")
//                        .font(.system(size: 24, weight: .bold, design: .default))
//                        .frame(maxWidth: .infinity, maxHeight: 60)
//                        .foregroundColor(Color.white)
//                        .background(Color.red)
//                        .cornerRadius(10)
//                }
//            )
        }
        .padding(30)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
