//
//  SourceSubview.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/17/22.
//

import SwiftUI

struct SourceSubview: View {
    
    @State private var category: String
    
    var body: some View {
        Text(category)
    }
}

//struct SourceSubview_Previews: PreviewProvider {
//
//    let source = ["abc", "nbc"]
//
//    static var previews: some View {
//        SourceSubview(sourceList: source)
//    }
//}
