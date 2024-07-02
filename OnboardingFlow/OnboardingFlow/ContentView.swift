//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Kanishq Mehta on 28/04/24.
//

import SwiftUI

let GradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: GradientColors))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
