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
                    Label("Main", systemImage: "house")
                }

            PictureView()
                .tabItem {
                    Label("Photos", systemImage: "photo")
                }
            VideoView()
                .tabItem {
                    Label("Videos", systemImage: "video")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
