//
//  ContentView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ForEach(0..<10) { _ in
                NavigationLink(destination: Text("Second View")) {
                    Text("Hello World")
                        .padding()
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
