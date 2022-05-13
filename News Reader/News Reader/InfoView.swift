//
//  InfoView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/13/22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Group {
            HStack {
                Text("Designed by: ")
                Text("Thomas E Cowern")
            }
            HStack {
                Text("Icons Generator: ")
                Text("https://appicon.co")
            }
            HStack {
                Text("Newspapr icons")
                Link("flaticon", destination: URL(string: "https://www.flaticon.com/free-icons/news")!)
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
