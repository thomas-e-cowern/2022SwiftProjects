//
//  ListStoryView.swift
//  News Reader
//
//  Created by Thomas Cowern New on 5/11/22.
//

import SwiftUI

struct ListStoryView: View {
    
    @State var title: String
    
    var body: some View {
        VStack (alignment: .center) {
            Text(title)
                .font(.title)
            
            Image("newspaper")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)

        }
    }
}

struct ListStoryView_Previews: PreviewProvider {
    static var previews: some View {
        ListStoryView(title: "Preview Story")
    }
}
