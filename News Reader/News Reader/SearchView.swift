//
//  SearchView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/13/22.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject private var networking = Networking()
    @State var text: String = ""
    @FocusState var buttonIsTapped: Bool
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search...", text: $text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(6)
                    .padding(.horizontal, 10)
                    .focused($buttonIsTapped)
                
                Button {
                    print("Search string is \(text)")
                    search()
                    buttonIsTapped = false
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                .padding(.trailing, 10)
            }
            List {
                ForEach(networking.channelArticles, id: \.title) { article in
                    NavigationLink(destination: StoryDetailView(article: article)) {
                        ListStoryView(article: article)
                    }
                }
            }
        }
    }
    
    func search () {
        Task {
            await networking.getArticlesForSearch(searchTerm: text)
            text = ""
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
