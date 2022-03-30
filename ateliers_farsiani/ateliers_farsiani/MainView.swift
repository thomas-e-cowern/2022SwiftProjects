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
                    .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.orange, lineWidth: 4))
                    .shadow(radius: 20)
                    .cornerRadius(20)
                    .scaledToFit()
                    .padding()
                
                HStack {
                    VStack {
                        Text("USA")
                        Image("AMFlag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 23)
                    }
                    VStack {
                        Text("Sweden")
                        Image("SwedenFlag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 25)
                    }
                    VStack {
                        Text("France")
                        Image("FrenchFlag")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 25)
                    }
                }
                
                Spacer()
                    .frame(height: 30)
            
                Section (header: Text("Contact Information")) {
                    HStack {
                        Text("Website:")
                        Spacer()
                        Link(destination: URL(string: "https://farsiani.com")!) {
                            Text("www.farsiani.com")
                        }
                    }
                    
                    HStack {
                        Text("Phone: ")
                        Spacer()
                        Text("Tel: 860-227-6656")
                    }
                    
                    HStack {
                        Text("Email:")
                        Spacer()
                        Text("Farsiani@farsiani.com")
                    }
                }
                .padding(5)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                
                Section (header: Text("Social Media")) {
                    HStack {
                        Link(destination: URL(string: "https://www.instagram.com/ateliers_farsiani/?r=nametag")!) {
                            Image("instagram-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                        }
                        Text("Follow us on Instagram")
                    }                    
                }
                .padding(5)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
