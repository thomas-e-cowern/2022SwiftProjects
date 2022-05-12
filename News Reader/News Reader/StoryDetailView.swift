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
            
            if article.urlToImage != nil {
                AsyncImage(url: URL(string: article.urlToImage!)) { image in
                    image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300, maxHeight: 300)
                    .background(Color.blue)
                } placeholder: {
                    ProgressView()
                }
            }
            
            Text(article.title)
                .padding()
                .font(.body)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.leading)
            
            if article.description != nil {
                Text(article.description!)
                    .padding()
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading)
            }
        }
    }
    
    func getArticleImage (url: String) {
        
    }
}

//struct StoryDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        StoryDetailView(article: <#Article#>)
//    }
//}
