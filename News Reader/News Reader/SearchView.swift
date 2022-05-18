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
    @State var showInfo: Bool = false
    @FocusState var buttonIsTapped: Bool
    
    var body: some View {
        VStack {
            NavigationView {

                List {
                    ForEach(networking.channelArticles, id: \.title) { article in
                        NavigationLink(destination: StoryDetailView(article: article)) {
                            ListStoryView(article: article)
                        }
                    }
                    
                }
                .toolbar {
                    ToolbarItemGroup (placement: .primaryAction) {
                        HStack {
                            TextField("Search...", text: $text)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(minWidth: 300)
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
                    }
                }
                .sheet(isPresented: $showInfo, content: {
                    InfoView()
                })
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
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
