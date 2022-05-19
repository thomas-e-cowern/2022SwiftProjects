//
//  NewEntryView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI

struct NewEntryView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var description: String = ""
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Description")) {
                    TextEditor(text: $description)
                        .multilineTextAlignment(.leading)
                        .frame(height: 150)
                }
                
                DatePicker(
                    "Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                
                Button {
                    // Activate date picker
                } label: {
                    Text("Date")
                }
                .frame(maxWidth: .infinity)

                
            } // End of form
            .navigationTitle("Add New Entry")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "x.circle")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // Save
                    } label: {
                        Text("Save")
                    }
                }
            } // End of toolbar
        } // End of navigation view
    }
}

struct NewEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryView()
    }
}
