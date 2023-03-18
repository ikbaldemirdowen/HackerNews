//
//  WebView.swift
//  HackerNews
//
//  Created by Ikbal Demirdoven on 2023-03-17.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable
{
    
    let url : String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = url
        {
            if let url = URL(string: safeString)
            {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
