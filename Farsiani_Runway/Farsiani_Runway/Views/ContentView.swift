//
//  ContentView.swift
//  Farsiani_Runway
//
//  Created by Thomas Cowern New on 4/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {        
        TabView {
            LatestShow()
                .tabItem {
                    Label("Latest Show", systemImage: "eye.circle")
                }
            Featured()
                .tabItem {
                    Label("Featured", systemImage: "pencil.and.outline")
                }
            Video()
                .tabItem {
                    Label("Video", systemImage: "video.circle")
                }
            Wishlist()
                .tabItem {
                    Label("Wishlist", systemImage: "arrow.clockwise.heart")
                }
            Cart()
                .tabItem {
                    Label("Cart", systemImage: "cart.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
