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
        Text("Channel View")
            .task {
                await networking.getSources()
            }
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
