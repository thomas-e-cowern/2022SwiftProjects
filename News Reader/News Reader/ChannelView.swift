//
//  ChannelView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/13/22.
//

import SwiftUI

struct ChannelView: View {
    
    @StateObject private var networking = Networking()
    
    var body: some View {
        if networking.sources.count == 0 {
            Text("Loading...")
                .task {
                    await networking.getSources()
                }
        } else {
            Text(networking.sources[0].name)
        }
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
