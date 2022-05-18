//
//  CategoryArticleView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/18/22.
//

import SwiftUI

struct ChannelArticleView: View {
    
    var channel: String = ""
    
    var body: some View {
        Text(channel)
            .onAppear {
                Networking().getArticlesBySource(source: channel)
            }
    }
}

struct ChannelArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelArticleView()
    }
}
