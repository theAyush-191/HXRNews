//
//  DefinedView.swift
//  HXNews
//
//  Created by Ayush Singh on 30/06/25.
//

import SwiftUI

struct DefinedView: View {
    let url:String?
    var body: some View {
        if let urlString = url{
            WebView(urlString: urlString)
        }
    }
}

#Preview {
    DefinedView(url:nil)
}

