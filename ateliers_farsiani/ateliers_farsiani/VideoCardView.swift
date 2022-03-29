//
//  VideoCardView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/29/22.
//

import SwiftUI
import AVKit

struct VideoCardView: View {
    var body: some View {
        HStack {
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "balarinas", withExtension: "mov")!))
                .frame(height: 400)
        }
    }
}

struct VideoCardView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCardView()
    }
}
