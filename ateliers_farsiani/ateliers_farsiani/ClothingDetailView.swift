//
//  ClothingDetailView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 4/15/22.
//

import SwiftUI

struct ClothingDetailView: View {
    var body: some View {
        VStack {
            Image("BlkDressCar")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 350, alignment: .center)
            
            VStack {
                HStack {
                    Text("DRESS")
                    Text("123.45")
                }
                HStack {
                    Text("Shoes")
                    Text("123.45")
                }
            }
        }
        
    }
}

struct ClothingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ClothingDetailView()
    }
}
