//
//  ContentView.swift
//  PityParty
//
//  Created by Thomas Cowern New on 5/9/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var timeRemaining = 60
    @State var showMessage: Bool = false
    @State var showTimer: Bool = true
    
    let partyTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        
        VStack {
            if showTimer {
                Text("\(timeRemaining)")
                .onReceive(partyTimer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    } else {
                        self.partyTimer.upstream.connect().cancel()
                        showMessage.toggle()
                        showTimer.toggle()
                    }
                }
            }
        }
        
        VStack {
            if showMessage {
                VStack {
                    Text("The Party is Over!")
                        .padding()

                    Text("Get Ready,")
                        .padding()

                    Text("Get Set,")
                        .padding()

                    Text("and go...")
                        .padding()

                }
            }
        }
            
        VStack {
            Button {
                timeRemaining = 60
            } label: {
                Text("Reset Timer")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
