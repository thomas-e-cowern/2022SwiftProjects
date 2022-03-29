//
//  MainView.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/29/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                
                Text("Ateliers Farsiani")
                    .font(.largeTitle)
                
                Text("Leila Farsiani")
                    .font(.title)
                
                Text("CEO & Founder")
                    .font(.headline)
               
                Image("LCar")
                    .resizable()
                    .cornerRadius(20)
                    .scaledToFit()
                    .padding()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
