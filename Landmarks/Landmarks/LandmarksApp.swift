//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kanishq Mehta on 01/11/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
