//
//  LaunchScreenView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/30/22.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            Image("FarsianiLogo")
                .resizable()
                .scaledToFit()
                .padding(9)
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
