//
//  ChannelCardView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/17/22.
//

import SwiftUI

struct ChannelCardView: View {
    
    let source: Source
    
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text(source.name)
                .font(.headline)
            Text("Category: \(source.category)")
        }
        .frame(width: 200, height: 50, alignment: .center)
        .padding()
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct ChannelCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelCardView(source: Source(id: "Test", name: "Test", description: "Test", url: "Test", category: "Test", country: "Test"))
    }
}
