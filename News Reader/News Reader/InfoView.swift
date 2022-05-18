//
//  InfoView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/13/22.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Designed by")) {
                    Text("Thomas E. Cowern")
                }
                Section(header: Text("Newspaper Icons")) {
                    Link("flaticon", destination: URL(string: "https://www.flaticon.com/free-icons/news")!)
                }
                Section(header: Text("Icons Generator")) {
                    Link("appicon", destination: URL(string: "https://appicon.co")!)
                }
                Section(header: Text("News API")) {
                    Link("newsapi.org", destination: URL(string: "https://newsapi.org")!)
                }
            }
            .navigationBarTitle("Credits")
            .navigationBarItems( trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Done")
                    .bold()
            }))
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
