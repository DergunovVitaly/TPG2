//
//  TabBarButton.swift
//  TPG2
//
//  Created by Geniew on 21.11.2023.
//

import SwiftUI

struct TabBarButton: View {
    
    var isActive: Bool = false
    var buttonText: String
    var image: Image
    let activeColor: Color = Color(red: 0.2, green: 0.18, blue: 0.29)
    let inActiveColor: Color = Color(red: 0.54, green: 0.55, blue: 0.69)
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 4) {
            image
                .frame(width: 20, height: 18)
                .foregroundColor(isActive ? activeColor : inActiveColor)
            Text(buttonText)
                .font(Font.custom("SF Pro Text", size: 10))
                .multilineTextAlignment(.center)
                .foregroundColor(isActive ? activeColor : inActiveColor)
        }
    }
}

#Preview {
    TabBarButton(isActive: true, buttonText: "Orders", image: Image(.icoCopyT))
}
