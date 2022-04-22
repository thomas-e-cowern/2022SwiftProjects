//
//  LatestShow.swift
//  Farsiani_Runway
//
//  Created by Thomas Cowern New on 4/22/22.
//

import SwiftUI

struct LatestShow: View {
    var body: some View {
        NavigationView {
            Text("Latest Show")
                .toolbar {
                    Button(action: {
                        // Somthing to happen
                    }, label: {
                        Label("Catalog", systemImage: "tshirt.fill")
                    })
                }
        }
    }
}

struct LatestShow_Previews: PreviewProvider {
    static var previews: some View {
        LatestShow()
    }
}
