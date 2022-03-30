//
//  ImageDetail.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/30/22.
//

import SwiftUI

struct ImageDetailView: View {
    
    var imageName: String
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            }
        }
    }
}

struct ImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView(imageName: "BlkDressRunway")
    }
}
