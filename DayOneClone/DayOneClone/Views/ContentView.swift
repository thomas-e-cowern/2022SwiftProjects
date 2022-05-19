//
//  ContentView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Label("List", systemImage: "list.star")
                }
            
            PhotoView()
                .tabItem {
                    Label("Photos", systemImage: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
                .previewDisplayName("iPhone 13")
            
//            ContentView()
//                .previewDevice(PreviewDevice(rawValue: "iPad Air (5th generation)"))
//                .previewDisplayName("iPad Air")
        }
    }
}
