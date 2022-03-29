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
                
                HStack {
                    VStack {
                        Text("USA")
                        Image("AMFlag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                    VStack {
                        Text("Sweden")
                        Image("SwedenFlag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                    VStack {
                        Text("France")
                        Image("FrenchFlag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                }
                
                
                Text("Leila Farsiani")
                    .font(.title)
                
                Text("CEO & Founder")
                    .font(.headline)
               
                Image("LCar")
                    .resizable()
                    .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.orange, lineWidth: 4))
                    .shadow(radius: 20)
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
