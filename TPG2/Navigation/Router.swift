//
//  Router.swift
//  TPG2
//
//  Created by Geniew on 13.12.2023.
//
// https://blorenzop.medium.com/routing-navigation-in-swiftui-f1f8ff818937

import SwiftUI

final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable {
//        case quotes
        case quoteRow(quote: Quote)
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
