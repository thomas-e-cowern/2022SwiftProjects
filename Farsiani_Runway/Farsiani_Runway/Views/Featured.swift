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
                

                GeometryReader { geo in
                    Image("LCar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width, height: geo.size.height)
                        .toolbar {
                            Button(action: {
                                // Somthing to happen
                            }, label: {
                                Text("Catalog")
                            })
                    }
                }
                VStack {
                    HStack {
                        Button {
                            print("Shirt Price")
                        } label: {
                            Image(systemName: "bag.badge.plus")
                                .foregroundColor(.white)
                        }
                        .offset(x: 30, y: -70)
                    }
                    Text("Shirt: $234.56")
                        .padding(2)
                        .background(.yellow)
                        .clipShape(Capsule())
                        
                    
                    

                    Button {
                        print("Skirt Price")
                    } label: {
                        Image(systemName: "bag.badge.plus")
                            .foregroundColor(.white)
                    }
                    .offset(x: 10, y: -10)
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
