//
//  ContentView.swift
//  Landmarks
//
//  Created by Kanishq Mehta on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
