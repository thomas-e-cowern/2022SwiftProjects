//
//  NewEntryView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI
import CoreData

struct NewEntryView: View {
    
//    init() {
//      let coloredAppearance = UINavigationBarAppearance()
//      coloredAppearance.configureWithOpaqueBackground()
//      coloredAppearance.backgroundColor = UIColor(Color("Blue"))
//      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//      
//      UINavigationBar.appearance().standardAppearance = coloredAppearance
//      UINavigationBar.appearance().compactAppearance = coloredAppearance
//      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
//      
//      UINavigationBar.appearance().tintColor = .white
//    }
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var moc
    
    @State private var description: String = ""
    @State private var date = Date()
    @State private var calendarId: Int = 0
    @State private var isHidden: Bool = true
    @State private var images: [UIImage] = []
    @Binding var showImagePicker: Bool
    
    @State private var inputImage: UIImage?
    
    @State private var textField: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (alignment: .leading) {
                    TextEditor(text: $description)
                        .id(textField)
                        .multilineTextAlignment(.leading)
                        .frame(height: 150)
                        .border(Color("Blue"), width: 3)
                        .cornerRadius(5)
                    
                    Spacer()
                        .frame(idealHeight: 300)
                    
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
                            showImagePicker = true
                        } label: {
                            Image(systemName: "camera")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color("Blue"))
                        }
                        .frame(width: 50, height: 50)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(images, id: \.self) { image in
                                    Image(uiImage: image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                    } // End of HStack
                } // End of VStack
                .padding(.horizontal, 10)
                .onChange(of: inputImage, perform: { _ in
                    loadImage()
                })
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
                            let newEntry = Entry(context:moc)
                            newEntry.id = UUID()
                            newEntry.text = description
                            newEntry.date = date
                            print("New Entry: \(newEntry)")
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
                }// End of toolbar
            } // End of scroll view
        } // End of navigation view
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: $inputImage)
        }
        .onAppear {
            if showImagePicker {
                print("Image picker should be there")
            }
        }
    }
    
    func formatDate (date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: date)
    }
    
    func loadImage () {
        guard let inputImage = inputImage else {
            return
        }
        images.append(inputImage)
    }
}

struct NewEntryView_Previews: PreviewProvider {
    
    @State static var showImagePicker = false
    
    static var previews: some View {
        NewEntryView(showImagePicker: Binding.constant(false))
    }
}
