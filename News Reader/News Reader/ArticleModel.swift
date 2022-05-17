//
//  ArticleModel.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/12/22.
//

import Foundation
import UIKit

struct Article: Codable {
    var source: Source
    var title = ""
    var urlToImage: String? = ""
    var url: String? = ""
    var description: String? = ""
    var publishedAt: String
    
    var publishedAtFormatted: String {
        let dateFormatter = ISO8601DateFormatter()
        let options: ISO8601DateFormatter.Options = [.withYear, .withMonth, .withDay, .withDashSeparatorInDate, .withTime, .withColonSeparatorInTime, .withSpaceBetweenDateAndTime]
        
        if let date = dateFormatter.date(from: publishedAt) {
     
            let GMT = TimeZone(abbreviation: "EST")!
            let stringTime = ISO8601DateFormatter.string(from: date, timeZone: GMT, formatOptions: options)
            
            return stringTime
            
        }
        return "No date information"
    }
}

struct Articles: Codable {
    var articles: [Article]
}

//struct Source: Codable {
//    var id: String? = ""
//    var name = ""
//}
