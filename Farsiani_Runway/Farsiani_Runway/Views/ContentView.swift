//
//  ContentView.swift
//  Farsiani_Runway
//
//  Created by Thomas Cowern New on 4/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        TabView {
            tabItem {
                Label("Latest Show", systemImage: "eye.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
