//
//  Featured.swift
//  Farsiani_Runway
//
//  Created by Thomas Cowern New on 4/22/22.
//

import SwiftUI

struct Featured: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image(systemName: "bag.badge.plus")
                    .foregroundColor(.red)
                Image("LCar")
                    .resizable()
                    .scaledToFit()
                    .toolbar {
                        Button(action: {
                            // Somthing to happen
                        }, label: {
                            Text("Catalog")
                        })
                }
                
            }
        }
    }
}

struct Featured_Previews: PreviewProvider {
    static var previews: some View {
        Featured()
    }
}
