//
//  StoryDetailView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/12/22.
//

import SwiftUI

struct StoryDetailView: View {
    
    @State var article: Article
    
    var body: some View {
        VStack (alignment: .center) {
            
            Image("newspaper")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text(article.title)
                .padding()
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.leading)
            
            Text(article.description)
                .padding()
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.leading)
        }
    }
}

//struct StoryDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        StoryDetailView(article: <#Article#>)
//    }
//}
