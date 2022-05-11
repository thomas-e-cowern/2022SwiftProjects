//
//  InfoView.swift
//  PityParty
//
//  Created by Thomas Cowern New on 5/10/22.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("How to use Pity Party:")
                .padding(.bottom, 10)
                .font(.largeTitle)
            
            Text("Pity Party is designed for those moments when you're stuck, frustrated or feeling sorry for yourself and need a minute to get yourself together.  Pressing the begin button starts a 60 second countdown with a random background color of dark shades.  Use this minute to work through your feelings and accept them.  At the end of the minute, the colors will brighten and some motivational messages will appear.  That means it's time to put your self pity aside and get into a better mindset to meet the challanges that remain.")
            
            Text("You can do this, you can handle what comes!")
                .padding(.top, 10)
                .font(.title)
        }
        .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
