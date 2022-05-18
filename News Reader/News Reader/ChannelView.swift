//
//  ChannelView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/13/22.
//

import SwiftUI

struct ChannelView: View {
    
    @StateObject private var networking = Networking()
    @State private var sources = []
    @State var chosenCategory = ""
    
    var body: some View {
        NavigationView {
            
            VStack (alignment: .center, spacing: 10) {
                if networking.sources.count == 0 {
                    Text("Loading...")
                        .task {
                            await networking.getSources()
                        }
                } else {
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(networking.categories, id:\.self) { category in
                                Button {
                                    print(category)
                                    chosenCategory = category
                                } label: {
                                    Text(category)
                                }
                                .padding()
                                .frame(width: 150, height: 50)
                                .background(Color.yellow)
                            }
                        }
                        .padding()
                    }
                    
                    List {
                        ForEach(networking.sources, id:\.self) { source in
                                if chosenCategory == "" {
                                    NavigationLink(destination: ChannelArticleView(channel: source.id ?? "No Source ID")) {
                                        HStack {
                                            Spacer()
                                            ChannelCardView(source: source)
                                            Spacer()
                                        }
                                    }
                                } else if source.category == chosenCategory {
                                    NavigationLink(destination: ChannelArticleView(channel: source.id ?? "No Source ID")) {
                                        HStack {
                                            Spacer()
                                            ChannelCardView(source: source)
                                            Spacer()
                                        }
                                    }
                                } else if chosenCategory == "All" {
                                    NavigationLink(destination: ChannelArticleView(channel: source.id ?? "No Source ID")) {
                                        HStack {
                                            Spacer()
                                            ChannelCardView(source: source)
                                            Spacer()
                                        }
                                    }
                                }
                        } // End of for each
                    }
                }
            } // End of VStack
            .navigationTitle("News Channels")
        } // End of NavigationView
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
