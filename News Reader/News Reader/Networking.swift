//
//  Networking.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/17/22.
//

import Foundation

class Networking: ObservableObject {
    
    let sourcesUrlString = "https://newsapi.org/v2/top-headlines/sources?country=us&apiKey=91918a83b185469c9f81f5af74ae59f9"
    
    @Published var sources : [Source] = []
    
    func getSources () async {
        guard let url = URL(string: sourcesUrlString) else {
            print("Invalid url in get sources")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            debugPrint(data)
            if let decodedResponse = try? JSONDecoder().decode(Sources.self, from: data) {
                await MainActor.run {
                    sources = decodedResponse.sources
                    print(sources[0].id as Any)

                }
//                sources = decodedResponse.sources
//                print(sources[0].id as Any)
            } else {
                print("😡😡😡 Something went wrong decoding in get sources")
            }
        } catch {
            print("Invalid data in get sources")
        }
        
    }
}
