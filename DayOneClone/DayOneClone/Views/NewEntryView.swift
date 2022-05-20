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
    @State private var calendarId: Int = 0
    @State private var isHidden: Bool = true
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                TextEditor(text: $description)
                    .padding(.horizontal)
                    .multilineTextAlignment(.leading)
                    .frame(height: 150)
                    .border(Color.blue)
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
                
                HStack {
                    Button {
                        isHidden = false
                    } label: {
                        Image(systemName: "calendar")
                                .foregroundColor(.blue)
                    }
                    .frame(width: 70, height: 70)

                    if !isHidden {
                        DatePicker(
                            "",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                        .id(calendarId)
                        .onChange(of: date) { _ in
                            calendarId += 1
                            isHidden = true
                        }
                    }
                    
                    Button {
                        // Add imgage
                    } label: {
                        Image(systemName: "camera")
                    }
                    .frame(width: 70, height: 70)
                    
                    Spacer()
                }
            }
    
           

        } // End of navigation view
    }
}

struct NewEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryView()
    }
}
