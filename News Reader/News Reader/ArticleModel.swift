//
//  ArticleModel.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/12/22.
//

import Foundation

struct Article: Codable {
    var source: Source
    var title = ""
    var urlToImage: String? = ""
    var url: String? = ""
    var description: String? = ""
    var publishedAt: String
    
    var publishedAtFormatted: String {
        let dateFormatter = ISO8601DateFormatter()
        if let date = dateFormatter.date(from: publishedAt) {
            print("Date as date : \(String(describing: date))")
            let calendar = Calendar.current
            let components = calendar.dateComponents([.year, .month, .day, .hour], from: date)
            if let finalDate = calendar.date(from: components) {
                return "\(finalDate)"
            }
        }
        return ""
    }
}

struct Articles: Codable {
    var articles: [Article]
}

struct Source: Codable {
    var id: String? = ""
    var name = ""
}
