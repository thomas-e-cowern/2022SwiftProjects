//
//  ContentView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center) {
            Image("Logo")
        }
        edgesIgnoringSafeArea(.all)
            .background()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
