//
//  HeaderView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader { metrics in
            VStack {
                HStack {
                    Button {
                        // Chose a photo
                    } label: {
                        Image(systemName: "camera")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .frame(width: 70, height: 70)
                
                    Spacer()
                        .frame(width: 50)
                    
                    Button {
                        // New entry
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .frame(width: 70, height: 70)
                }
            }
            .frame(height: metrics.size.height * 0.4)
            .frame(maxWidth: .infinity)
            .background(Color("Blue"))
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
