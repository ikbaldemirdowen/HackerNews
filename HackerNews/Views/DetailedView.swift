//
//  DetailedView.swift
//  HackerNews
//
//  Created by Ikbal Demirdoven on 2023-03-17.
//

import SwiftUI
import UIKit
import WebKit

struct DetailedView: View {
    let url : String?
    var body: some View {
        WebView(url: url)
    }
}



struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(url: "https://google.com")
    }
}

