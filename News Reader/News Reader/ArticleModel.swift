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
}

struct Articles: Codable {
    var articles: [Article]
}

struct Source: Codable {
    var id: String? = ""
    var name = ""
}
