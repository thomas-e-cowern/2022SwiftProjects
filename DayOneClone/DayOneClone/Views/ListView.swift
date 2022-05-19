//
//  ListView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            HeaderView()
            List {
                ForEach(0..<20, id: \.self) { number in
                    Text("Entry \(number)")
                }
            }
            .background(Color.red)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
