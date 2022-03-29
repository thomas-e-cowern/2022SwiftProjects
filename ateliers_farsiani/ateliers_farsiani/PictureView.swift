//
//  PictureView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/29/22.
//

import SwiftUI

struct PictureView: View {
    
    @State private var images: [String] = ["BlkDressRunway", "BlkDressLegs", "BlkDressCar"]
    
    var body: some View {
        ScrollView (.vertical) {
            VStack {
                ForEach(images, id: \.self) { image in
                    Image(image)
                }
            }
        }
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView()
    }
}
