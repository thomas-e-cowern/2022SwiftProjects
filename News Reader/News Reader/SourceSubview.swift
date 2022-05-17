//
//  SourceSubview.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/17/22.
//

import SwiftUI

struct SourceSubview: View {
    
    @Binding var category: String
    
    var body: some View {
        VStack {
            Button {
                category = "\(category)"
            } label: {
                Text(category)
            }
        }
        .padding()
        .frame(width: 150, height: 50)
        .background(Color.yellow)

        
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
