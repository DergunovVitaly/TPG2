//
//  Translations.swift
//  TPG2
//
//  Created by Geniew on 26.10.2023.
//

import Foundation

internal enum Translations {
    //MARK:     A
    //MARK:     B
    //MARK:     C
    internal static let charts = Translations.tr(table, "Charts")
    internal static let contactUs = Translations.tr(table, "Contact Us")
    //MARK:     D
    internal static let dontHaveAccount = Translations.tr(table, "dontHaveAccount")
    //MARK:     E
    internal static let enterPassword = Translations.tr(table, "enterPassword")
    internal static let enterLogin = Translations.tr(table, "enterLogin")
    //MARK:     F
    internal static let forgotPassword = Translations.tr(table, "forgotPassword")
    internal static let finance = Translations.tr(table, "Finance")
    //MARK:     G
    //MARK:     H
    //MARK:     I
    //MARK:     J
    //MARK:     K
    //MARK:     L
    internal static let login = Translations.tr(table, "login")
    internal static let logOut = Translations.tr(table, "Log Out")
    //MARK:     M
    internal static let menu = Translations.tr(table, "Menu")
    internal static let more = Translations.tr(table, "More")
    internal static let myAccount = Translations.tr(table, "My Account")
    //MARK:     N
    internal static let notifications = Translations.tr(table, "Notifications")
    //MARK:     O
    internal static let orders = Translations.tr(table, "Orders")
    //MARK:     P
    internal static let portfolio = Translations.tr(table, "Portfolio")
    internal static let password = Translations.tr(table, "password")
    //MARK:     Q
    internal static let quotes = Translations.tr(table, "Quotes")
    //MARK:     R
    internal static let rememberMe = Translations.tr(table, "rememberMe")
    //MARK:     S
    internal static let signIn = Translations.tr(table, "signIn")
    internal static let signInIntoAccount = Translations.tr(table, "signInIntoAccount")
    internal static let search = Translations.tr(table, "Search")
    //MARK:     T
    internal static let tradingHistory = Translations.tr(table, "Trading History")
    //MARK:     U
    internal static let uploadDocuments = Translations.tr(table, "Upload Documents")
    //MARK:     V
    //MARK:     W
    internal static let welcome = Translations.tr(table, "welcome")
    //MARK:     X
    //MARK:     Y
    //MARK:     Z
    
//    internal static let welcome = Translations.tr(table, "welcome")
}

// MARK: - Implementation Details

extension Translations {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
    static let table = "Localizable"
}

private final class BundleToken {}
