//
//  SearchView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/13/22.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject private var networking = Networking()
    @State var text: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search...", text: $text)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(6)
                    .padding(.horizontal, 10)
                
                Button {
                    print("Search string is \(text)")
                    search()
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                .padding(.trailing, 10)
            }
            Spacer()
        }
    }
    
    func search () {
        Task {
            await networking.getArticlesForSearch(searchTerm: text)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
