//
//  HeadlinesView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/13/22.
//

import SwiftUI

struct HeadlinesView: View {
    let hp = HelperFile()
    
    @State private var articles = [Article]()
    @State var showInfo: Bool = false

    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(articles, id: \.title) { article in
                        NavigationLink(destination: StoryDetailView(article: article)) {
                            ListStoryView(article: article)
                        }
                    }
                }
                .sheet(isPresented: $showInfo, content: {
                    InfoView()
                })
                .task {
                    await getArticles()
                }
                .navigationTitle("News Reader")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem (placement: .navigation) {
                        Button {
                            refreshArticles()
                        } label: {
                            Image(systemName: "arrow.clockwise")
                        }
                    }
                    ToolbarItem (placement: .navigationBarTrailing) {
                        Button {
                            showInfo.toggle()
                        } label: {
                            Image(systemName: "info")
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func refreshArticles () {
        Task {
            await getArticles()
        }
    }
    
    func getArticles () async {
        print("Getting Articles")
        let articlesUrlString = "https://newsapi.org/v2/top-headlines?country=us&apiKey=91918a83b185469c9f81f5af74ae59f9"
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
//                print(articles[5].id)
            } else {
                print("😡😡😡 Something went wrong decoding in headlines view")
            }
            //
        } catch {
            print("Invalid Data")
        }
    }
}

struct HeadlinesView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlinesView()
    }
}
