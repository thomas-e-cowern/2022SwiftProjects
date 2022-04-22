//
//  ateliers_farsianiApp.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/29/22.
//

import SwiftUI

@main
struct ateliers_farsianiApp: App {
    
    @State private var showLaunchScreenView: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
                
                ZStack {
                    if showLaunchScreenView {
                        LaunchScreenView(showLaunchScreenView: $showLaunchScreenView)
                            .transition(AnyTransition.opacity.combined(with: .slide))
                    }
                }
                .zIndex(2)
            }
            .zIndex(0)
        }
    }
}
