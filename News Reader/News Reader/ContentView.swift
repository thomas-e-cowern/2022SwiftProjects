//
//  ContentView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/11/22.
//

import SwiftUI

struct ContentView: View {
    
    let hp = HelperFile()
    
    private var storyList: [String] = ["First Story", "Second Story", "Third Story", "Fourth Story", "Fifth Story", "Sixth Story"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(storyList, id: \.self) { story in
                    NavigationLink(destination: ListStoryView(title: story)) {
                        ListStoryView(title: story)
                    }
                }
            }
            .navigationTitle("News Reader")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button {
                        // Refresh
                    } label: {
                        Image(systemName: "arrow.clockwise")
                    }
                }
            }
            .task {
                await hp.getArticles()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
