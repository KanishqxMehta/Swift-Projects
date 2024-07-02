//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Kanishq Mehta on 06/06/24.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}
