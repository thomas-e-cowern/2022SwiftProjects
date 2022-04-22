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
            HStack {
                Spacer()
                Button {
                    // close
                } label: {
                    Image(systemName: "xmark.circle")
                }

            }
            Text("Long Sleeve Top")
            HStack {
                Text("$123.45")
                Button {
                    print("Adding to cart")
                } label: {
                    Image(systemName: "cart.badge.plus")
                }
            }
        }
        .padding(4)
        .background(.yellow)
        .cornerRadius(5)
        .frame(width: 150, height: 50)
    }
}

struct PriceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PriceDetailView()
    }
}
