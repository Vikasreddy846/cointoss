//
//  cointossApp.swift
//  cointoss
//
//  Created by Priya Wong on 3/27/23.
//

import SwiftUI

@main
struct cointossApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
