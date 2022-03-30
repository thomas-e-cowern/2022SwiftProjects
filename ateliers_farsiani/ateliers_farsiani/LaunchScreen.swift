//
//  LaunchScreen.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/30/22.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        Image("FarsianiLogo")
            .resizable()
            .scaledToFit()
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
