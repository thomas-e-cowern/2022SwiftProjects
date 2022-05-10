//
//  ContentView.swift
//  PityParty
//
//  Created by Thomas Cowern New on 5/9/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Ready for Pity?")
                Button {
                    // start the timer
                } label: {
                    Text("Begin")
                }

            }
            .navigationTitle("Pity Party")
            .toolbar {
                ToolbarItem {
                    Button {
                        // info button
                    } label: {
                        HStack {
                            Image(systemName: "questionmark.circle")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
