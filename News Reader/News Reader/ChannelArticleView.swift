//
//  CategoryArticleView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/18/22.
//

import SwiftUI

struct ChannelArticleView: View {
    
    @StateObject private var networking = Networking()
    @State private var articles = [Article]()
    @State var showInfo: Bool = false
    var channel: String = ""
    
    var body: some View {
        List {
            ForEach(networking.channelArticles, id: \.title) { article in
                NavigationLink(destination: StoryDetailView(article: article)) {
                    ListStoryView(article: article)
                }
            }
        }
        .navigationTitle(channel)
        .sheet(isPresented: $showInfo, content: {
            InfoView()
        })
            .task {
                await networking.getArticlesBySource(source: channel)
            }
    }
}

struct ChannelArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelArticleView()
    }
}
