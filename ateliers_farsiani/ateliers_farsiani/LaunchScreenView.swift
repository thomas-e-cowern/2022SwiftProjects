//
//  LaunchScreenView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/30/22.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var loadingText: String = "Welcome to..."
    @State private var showLoadingText: Bool = false
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            Image("FarsianiLogo")
                .resizable()
                .scaledToFit()
                .padding(9)
            
            ZStack {
                if showLoadingText {
                    Text(loadingText)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: -100)
        }
        .onAppear {
            showLoadingText.toggle()
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
