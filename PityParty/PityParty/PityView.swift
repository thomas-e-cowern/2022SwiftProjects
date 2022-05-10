//
//  PityView.swift
//  PityParty
//
//  Created by Thomas Cowern New on 5/10/22.
//

import SwiftUI

struct PityView: View {
    
    @State var timeRemaining = 60
    @State var showMessage: Bool = false
    @State var showTimer: Bool = true
    @State var startTimer: Bool = true
    
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
                showMessage = false
                showTimer = true
            } label: {
                Text("Reset Timer")
            }
        }
    }
}

struct PityView_Previews: PreviewProvider {
    static var previews: some View {
        PityView()
    }
}
