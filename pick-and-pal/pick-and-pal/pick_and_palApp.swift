//
//  pick_and_palApp.swift
//  pick-and-pal
//
//  Created by Kanishq Mehta on 30/05/24.
//

import SwiftUI
import SwiftData

@main
struct pick_and_palApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(savedList: [])
                .modelContainer(for: NameList.self)
        }
    }
}
