//
//  ImageDetail.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/30/22.
//

import SwiftUI

struct ImageDetail: View {
    var body: some View {
        Image("BlkDressRunway")
            .frame(width: .infinity, height: .infinity, alignment: .center)
    }
}

struct ImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetail()
    }
}
