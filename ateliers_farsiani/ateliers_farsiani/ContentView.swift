//
//  ContentView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }

            PictureView()
                .tabItem {
                    Label("Pictures", systemImage: "square.and.pencil")
                }
            VideoView()
                .tabItem {
                    Label("Videos", systemImage: "square.and.pencil")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
