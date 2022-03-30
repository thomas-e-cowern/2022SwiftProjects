//
//  CreditVuew.swift
//  ateliers_farsiani
//
//  Created by Thomas Cowern New on 3/30/22.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        Form {
            Section(header: Text("Credits")) {
                HStack {
                    Text("Flag Images:")
                    Spacer()
                    Link("Images by Clker-Free-Vector-Images from Pixabay",
                         destination: URL(string: "https://pixabay.com/users/clker-free-vector-images-3736/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=28463")!)
                }
                HStack {
                    Text("Developer:")
                    Spacer()
                    Text("Thomas E Cowern")
                }
                HStack {
                    Text("Designed by:")
                    Spacer()
                    Text("Leila Farsiani & Thomas E Cowern")
                        .multilineTextAlignment(.leading)
                }
                HStack {
                    Text("Copyright:")
                    Spacer()
                    Text("@Ateliers Farsiani, all rights reserved")
                        .multilineTextAlignment(.leading)
                }
            }
        }
    }
}

struct CreditVuew_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
