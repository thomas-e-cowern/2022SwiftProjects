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
                    ContentView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }

                    OrderView()
                        .tabItem {
                            Label("Order", systemImage: "square.and.pencil")
                        }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
