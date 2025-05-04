//
//  ContentView.swift
//  Swift Data for iOS
//
//  Created by Ahmet Bostanci on 4.05.2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query private var model: [SwiftDataModel]
    @Environment(\.modelContext) var context
    
    @State private var myText: String = ""
    
    var body: some View {
        List {
            TextField("Write here...", text: $myText)
                .onSubmit {
                    addToSwiftDataModel()
                }
            ForEach(model) {
                Text($0.text)
            }
            .onDelete(perform: deleteData)
        }
    }
    
    func addToSwiftDataModel() {
        let newModel = SwiftDataModel(text: "")
        newModel.text = myText
        
        context.insert(newModel)
        
        //making clear after return
        myText = ""
    }
    
    
    func deleteData(at offset: IndexSet) {
        for index in offset {
            context.delete(model[index])
        }
    }
    
    
}

#Preview {
    ContentView()
        .modelContainer(for: SwiftDataModel.self, inMemory: false)
}
