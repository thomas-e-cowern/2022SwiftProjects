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
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (spacing: 10) {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 300, alignment: .center)
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
