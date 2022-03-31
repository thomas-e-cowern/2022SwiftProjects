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
//                    .zIndex(0)
                
                ZStack {
                    if showLaunchScreenView {
                        LaunchScreenView(showLaunchScreenView: $showLaunchScreenView)
                            .transition(.slide)
//                            .zIndex(2.0)
                    }
                }
//                .zIndex(1.0)
            }
        }
    }
}
