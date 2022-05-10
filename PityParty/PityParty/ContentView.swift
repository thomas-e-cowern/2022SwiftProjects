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
                    .font(.title)
                    .fontWeight(.bold)
                
                Button {
                    // start the timer
                } label: {
                    Text("Begin")
                        .frame(width: 150, height: 150)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .font(.title)
                }
                .cornerRadius(75)

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
