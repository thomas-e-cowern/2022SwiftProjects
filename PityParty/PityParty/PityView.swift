//
//  PityView.swift
//  PityParty
//
//  Created by Thomas Cowern New on 5/10/22.
//

import SwiftUI

struct PityView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode
    
    @State var timeRemaining = 60
    @State var showMessage: Bool = false
    @State var showTimer: Bool = true
    @State var startTimer: Bool = true
    @State var backgroundColor: String = "Gray1"
    @State var showResetBUtton: Bool = false
    
    let partyTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    
    var body: some View {
        VStack {
            VStack {
                if showTimer {
                    Text("\(timeRemaining)")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.heavy)
                    .onReceive(partyTimer) { _ in
                        if timeRemaining > 0 {
                            timeRemaining -= 1
                            self.backgroundColor = randomizeColor()
                        } else {
                            self.partyTimer.upstream.connect().cancel()
                            showMessage.toggle()
                            showTimer.toggle()
                            showResetBUtton.toggle()
                        }
                    }
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem (placement: .navigation) {
                            Button {
                                self.presentationMode.wrappedValue.dismiss()
                            } label: {
                                HStack {
                                    Image(systemName: "arrow.left")
                                        .foregroundColor(.white)
                                    Text("Back")
                                        .foregroundColor(.white)
                                }
                            }
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
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem (placement: .navigation) {
                            Button {
                                self.presentationMode.wrappedValue.dismiss()
                            } label: {
                                HStack {
                                    Image(systemName: "arrow.left")
                                        .foregroundColor(.white)
                                    Text("Back")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }
                }
            }
                
            if showResetBUtton {
                VStack {
                    Button {
                        dismiss()
                    } label: {
                        Text("Reset Timer")
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(backgroundColor))
        .ignoresSafeArea(.all)
    }
    
    func randomizeColor () -> String {
        let colors: [String] = ["Gray1", "Gray2", "Gray3", "Gray4", "Gray5"]
        
        let color = colors[Int.random(in: 0..<colors.count)]
        
        return color

    }
}

struct PityView_Previews: PreviewProvider {
    static var previews: some View {
        PityView()
    }
}
