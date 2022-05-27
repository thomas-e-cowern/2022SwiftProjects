//
//  Constants.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/27/22.
//

import Foundation
import UIKit

struct Constants {
    
    struct API {
        
        static let headlinesApiCall = "https://newsapi.org/v2/top-headlines/sources?country=us&apiKey=91918a83b185469c9f81f5af74ae59f9"
        
        static let sourcesApiCall = "https://newsapi.org/v2/top-headlines?sources="
        
        static let newsApiKey = "&apiKey=91918a83b185469c9f81f5af74ae59f9"
    }
    
}
