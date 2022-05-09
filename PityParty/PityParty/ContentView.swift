//
//  ContentView.swift
//  PityParty
//
//  Created by Thomas Cowern New on 5/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("The Party is Over!")
            .padding()
        Text("Get Ready,")
            .padding()
            .hidden()
        Text("Get Set,")
            .padding()
            .hidden()
        Text("and go...")
            .padding()
            .hidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
