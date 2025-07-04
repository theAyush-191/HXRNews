//
//  WebView.swift
//  HXNews
//
//  Created by Ayush Singh on 30/06/25.
//

import Foundation
import SwiftUI
import WebKit

struct WebView:UIViewRepresentable {
    let urlString:String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeStringURL = urlString{
            if let url=URL(string: safeStringURL)
                {
                let request=URLRequest(url:url )
            uiView.load(request)
            }
        }
    }
    
}



