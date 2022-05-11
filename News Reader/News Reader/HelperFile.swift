//
//  HelperFile.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/11/22.
//

import Foundation
import Alamofire

class HelperFile {
    
    func getArticles () {
        
        AF.request("https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=91918a83b185469c9f81f5af74ae59f9")
            .onURLRequestCreation { request in
                print(request)
            }
    }
    
}
