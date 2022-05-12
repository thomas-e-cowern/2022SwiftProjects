//
//  ArticleModel.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/12/22.
//

import Foundation

struct Article: Codable {
    var title = ""
    var urlToImage = ""
    var url = ""
    var description = ""
    var content = ""
//    var category = ""
}

struct Articles: Codable {
    var articles: [Article]
}
