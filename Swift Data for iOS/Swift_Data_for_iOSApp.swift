//
//  Swift_Data_for_iOSApp.swift
//  Swift Data for iOS
//
//  Created by Ahmet Bostanci on 4.05.2025.
//

import SwiftData
import SwiftUI


@main
struct Swift_Data_for_iOSApp: App {
    let container: ModelContainer = {
        do {
            return try ModelContainer(for: SwiftDataModel.self)
        } catch {
            fatalError("\(error)")
        }
    }()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
}


@Model
final class SwiftDataModel {
    var text: String
    
    init(text: String) {
        self.text = text
    }
}
