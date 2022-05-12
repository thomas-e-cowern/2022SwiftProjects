//
//  ArticleModel.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/12/22.
//

import Foundation

struct Article: Decodable {
    var title = ""
    var urlToImage = ""
    var url = ""
    var description = ""
//    var category = ""
}

struct Articles: Decodable {
    var articles: [Article]
}
