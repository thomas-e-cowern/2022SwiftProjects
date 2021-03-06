//
//  VideoView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/29/22.
//

import SwiftUI

struct VideoView: View {
    
    var videos = ["balarinas", "runway", "runwayback"]
    
    var body: some View {
        ScrollView (.vertical) {
            VStack (alignment: .center, spacing: 20) {
                ForEach(videos, id: \.self) { video in
                    VideoCardView(videoTitle: video)
                }
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
