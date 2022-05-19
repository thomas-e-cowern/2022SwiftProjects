//
//  NewEntryView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI

struct NewEntryView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Text("New Entry View")
                .navigationTitle("Add New Entry")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "x.circle.fill")
                        }

                    }
            }
        }
    }
}

struct NewEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryView()
    }
}
