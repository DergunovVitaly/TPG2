//
//  ProgressViewStyle.swift
//  TPG2
//
//  Created by Geniew on 27.12.2023.
//

import SwiftUI
import WebKit

struct GifImage: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: "animationActivity", withExtension: "gif")
        let data = try! Data(contentsOf: url!)
        webView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: (url?.deletingLastPathComponent())!)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

