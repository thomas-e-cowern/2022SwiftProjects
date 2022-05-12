//
//  ContentView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/11/22.
//

import SwiftUI

struct ContentView: View {
    
    let hp = HelperFile()
    
    @State private var articles = [Article]()

    var body: some View {
        
        NavigationView {
            List(articles, id:\.title) { article in
//                VStack {
//                    Text(article.title)
//                        .font(.headline)
//                }
                
                ForEach(articles, id: \.title) { article in
                    NavigationLink(destination: ListStoryView(article: article)) {
                        ListStoryView(article: article)
                    }
                }
            }.task {
                await getArticles()
            }
            .navigationTitle("News Reader")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button {
                        // Refresh
                    } label: {
                        Image(systemName: "arrow.clockwise")
                    }
                }
            }
            
        }
    }
    
    func getArticles () async {
    
        let articlesUrlString = "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=91918a83b185469c9f81f5af74ae59f9"
//        print("😍😍😍 Inside get articles")
        
        guard let url = URL(string: articlesUrlString) else {
            print("Invalid URL")
            return
        }
        
        do {
//            print("😍😍😍 Inside do catch")
            let (data, _) = try await URLSession.shared.data(from: url)
//            print("😍😍😍 Data: \(data)")
            debugPrint(data)
            if let decodedResponse = try? JSONDecoder().decode(Articles.self, from: data) {
                articles = decodedResponse.articles
                print(articles[0].title)
            } else {
                print("😡😡😡 Something went wrong decoding")
            }
            //
        } catch {
            print("Invalid Data")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
