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
            VStack {
                if article.urlToImage != nil {
                    AsyncImage(url: URL(string: article.urlToImage!)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 300, maxHeight: 150)
                        case .failure:
                            Image("newspaper")
                        @unknown default:
                            EmptyView()
                        }
                    }
                } else {
                    Image("newspaper")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 400, maxHeight: 200)
                }
                
                Text(article.title)
                    .padding()
                    .font(.headline)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading)
                
                if article.description != nil {
                    Text(article.description!)
                        .padding()
                        .font(.body)
//                        .frame(maxWidth: 300)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.leading)
                }
                
                if article.url != nil {
                    Link(destination: URL(string: article.url!)!) {
                        Text("See the full story here...")
                    }
                }
            }
        }
    }
}

//struct StoryDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        StoryDetailView(article: <#Article#>)
//    }
//}
