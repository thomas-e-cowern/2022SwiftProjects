//
//  SourcesModel.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/17/22.
//

import Foundation

struct Source: Codable, Hashable {
    var id: String? = ""
    var name = ""
    var description = ""
    var url = ""
    var category = ""
    var country = ""
}

struct Sources: Codable {
    var sources: [Source]
}
