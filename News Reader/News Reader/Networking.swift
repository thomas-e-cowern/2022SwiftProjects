//
//  Networking.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/17/22.
//

import Foundation
import SwiftUI

class Networking: ObservableObject {
    
    static let shared = Networking()
    
    let sourcesUrlString = "https://newsapi.org/v2/top-headlines/sources?country=us&apiKey=91918a83b185469c9f81f5af74ae59f9"
    
    @Published var sources : [Source] = []
    @Published var categories : [String] = ["All"]
    @Published var channelArticles = [Article]()
    
    // MARK:  Get Sources
    func getSources () async {
        guard let url = URL(string: sourcesUrlString) else {
            print("Invalid url in get sources")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(Sources.self, from: data) {
                await MainActor.run {
                    sources = decodedResponse.sources
                    for source in sources {
                        let category = source.category
                        
                        if !categories.contains(category) {
                            categories.append(source.category)
                        }
                    }
                }
            } else {
                print("😡😡😡 Something went wrong decoding in get sources")
            }
        } catch {
            print("Invalid data in get sources")
        }
    } // End of get sources
    
    // MARK:  Get Articles By Source
    func getArticlesBySource (source: String) async {
        
        let source = source.filter { !$0.isWhitespace }.lowercased()
        let sourceUrlString = "https://newsapi.org/v2/top-headlines?sources=\(source)&apiKey=91918a83b185469c9f81f5af74ae59f9"
        
        guard let url = URL(string: sourceUrlString) else {
            print("Invalid url in get article by source")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(Articles.self, from: data) {
                await MainActor.run {
                    channelArticles = decodedResponse.articles
                }
            } else {
                print("😡😡😡 Something went wrong decoding in get articles by source")
            }
        } catch {
            print("Invalid data in get articles by source")
        }
    } // End of get articles by source
    
    func getArticlesForSearch (searchTerm: String) async {
        
        let searchTerm = searchTerm.lowercased()
        let searchUrlString = ""
        
        print("Search: \(searchTerm)")
    }
}
