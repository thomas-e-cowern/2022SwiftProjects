//
//  ListStoryView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/11/22.
//

import SwiftUI

struct ListStoryView: View {
    
    @State var article: Article
    
    var body: some View {
        VStack (alignment: .center) {
            Text(article.title)
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.leading)
            
            Image("newspaper")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)

        }
    }
}
