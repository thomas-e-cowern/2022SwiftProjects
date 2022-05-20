//
//  NewEntryView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI

struct NewEntryView: View {
    
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
      coloredAppearance.backgroundColor = UIColor(Color("Blue"))
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
      
      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
      
      UINavigationBar.appearance().tintColor = .white
    }
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var description: String = ""
    @State private var date = Date()
    @State private var calendarId: Int = 0
    @State private var isHidden: Bool = true
    
    @State private var textField: Int = 0
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                TextEditor(text: $description)
                    .id(textField)
                    .multilineTextAlignment(.leading)
                    .frame(height: 150)
                    .border(Color("Blue"), width: 3)
                    .cornerRadius(5)
                    
                HStack {
                    Button {
                        isHidden.toggle()
                    } label: {
                        Image(systemName: "calendar")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color("Blue"))
                        
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
                            .foregroundColor(Color("Blue"))
                    }
                    .frame(width: 50, height: 50)
                    
                    Spacer()
                }
            }
            .padding(.horizontal, 10)
            
            .navigationTitle(formatDate(date: date))
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
                // Dismiss the keyboard when done
                ToolbarItem(placement: .keyboard) {
                    Button("Done") {
                        textField += 1
                    }
                }
            } // End of toolbar
        } // End of navigation view
    }
    
    func formatDate (date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: date)
    }
}

struct NewEntryView_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryView()
    }
}
