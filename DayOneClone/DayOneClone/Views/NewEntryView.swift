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
                    
                    .multilineTextAlignment(.leading)
                    .frame(height: 150)
                    .border(Color.blue)
                    .cornerRadius(5)
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
                        isHidden.toggle()
                    } label: {
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.blue)
                        
                    }
                    .frame(width: 50, height: 50)

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
                            .resizable()
                            .scaledToFit()
                    }
                    .frame(width: 50, height: 50)
                    
                    Spacer()
                }
            }
            .padding(.horizontal, 10)
        } // End of navigation view
    }
}

struct NewEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryView()
    }
}
