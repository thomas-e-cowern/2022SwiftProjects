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
        VStack (alignment: .center, spacing: 30) {
            Text(article.title)
                .font(.body)
                .fixedSize(horizontal: false, vertical: false)
                .multilineTextAlignment(.leading)
            
            if article.urlToImage != nil {
                AsyncImage(url: URL(string: article.urlToImage!)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: 300, maxHeight: 150)
                            .padding(.bottom, 10)
                    case .failure:
                        Image("newspaper")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 300, maxHeight: 150)
                            .padding(.bottom, 10)
                    @unknown default:
                        EmptyView()
                    }
                }
                
            } else {
                Image("newspaper")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300, maxHeight: 150)
                    .padding(.bottom, 10)
            }
        }
        .padding(.bottom, 10)
    }
}
