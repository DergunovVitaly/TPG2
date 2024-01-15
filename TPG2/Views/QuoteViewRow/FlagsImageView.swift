//
//  FlagsImageView.swift
//  TPG2
//
//  Created by Geniew on 28.11.2023.
//

import SwiftUI

struct FlagsImageView: View {
    var body: some View {
        ZStack {
            Image("Vector-4")
            .frame(width: 17, height: 17)
            .background(
            Image("Vector-3")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 17, height: 17)
            .clipped()
            )
            .shadow(color: .black.opacity(0.2), radius: 1, x: 0, y: 2)
            .overlay(
            Rectangle()
            .stroke(.white, lineWidth: 0)
            )
        }
        .frame(width: 18, height: 18)
    }
}

#Preview {
    FlagsImageView()
}
