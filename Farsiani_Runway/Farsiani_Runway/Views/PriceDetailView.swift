//
//  PriceDetailView.swift
//  Farsiani_Runway
//
//  Created by Thomas Cowern New on 4/22/22.
//

import SwiftUI

struct PriceDetailView: View {
    var body: some View {
        VStack {
            Text("Long Sleeve Top")
            Text("$123.45")
            Button {
                // add to cart
            } label: {
                Image(systemName: "cart.badge.plus")
            }

        }
        
    }
}

struct PriceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PriceDetailView()
    }
}
