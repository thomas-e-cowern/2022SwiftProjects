//
//  ContentView.swift
//  PityParty
//
//  Created by Thomas Cowern New on 5/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showPityView: Bool = false
    @State private var showInfoView: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Ready for Some Pity?")
                    .font(.title)
                    .fontWeight(.bold)
                
                NavigationLink(destination: PityView(), isActive: $showPityView) {
                    Button ("Begin") {
                        self.showPityView = true
                    }
                    .frame(width: 150, height: 150)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("Gray1"), Color("Gray5")]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(75)
                }
            }
            .navigationTitle("Pity Party")
            .toolbar {
                ToolbarItem {
                    NavigationLink(destination: InfoView(), isActive: $showInfoView) {
                        Button {
                            self.showInfoView = true
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
