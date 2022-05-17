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
        VStack (alignment: .center, spacing: 10) {
            if networking.sources.count == 0 {
                Text("Loading...")
                    .task {
                        await networking.getSources()
                    }
            } else {
                List {
                    ForEach(networking.sources, id:\.self) { source in
                        HStack {
                            Spacer()
                            ChannelCardView(source: source)
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
