//
//  HeaderView.swift
//  DayOneClone
//
//  Created by Thomas Cowern New on 5/19/22.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var entries: FetchedResults<Entry>
    
    @State private var isNewEntryShowing = false
    @State private var showImagePicker = false
    private let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
            VStack {
                HStack {
                    Button {
                        print("Add a picture")
                        isNewEntryShowing = true
                        showImagePicker = true
                        print("Picker: \(showImagePicker)")
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
                        print("Add an entry")
                        isNewEntryShowing = true
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.white)
                    }
                    .padding()
                    .frame(width: 70, height: 70)
                }
                .sheet(isPresented: $isNewEntryShowing) {
                    NewEntryView(showImagePicker: $showImagePicker)
                }
            }
            .frame(height: screenHeight * 0.4)
            .frame(maxWidth: .infinity)
            .background(Color("Blue"))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
