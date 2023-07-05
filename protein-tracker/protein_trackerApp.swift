//
//  protein_trackerApp.swift
//  protein-tracker
//
//  Created by Harrison Webb on 7/4/23.
//

import SwiftUI

@main
struct protein_trackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
