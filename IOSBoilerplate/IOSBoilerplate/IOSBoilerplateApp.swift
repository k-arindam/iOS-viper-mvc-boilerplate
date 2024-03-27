//
//  IOSBoilerplateApp.swift
//  IOSBoilerplate
//
//  Created by Arindam Karmakar on 27/03/24.
//

import SwiftUI
import SwiftData
import IOSBCamera

@main
struct IOSBoilerplateApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    let camera = CameraRoute.build()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
