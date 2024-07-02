//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Kanishq Mehta on 25/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Knock Knock!")
                    .padding()
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                Text("Fire Briget There!")
                    .padding()
                    .background(Color.mint, in: RoundedRectangle(cornerRadius: 8))
            }
            Text("Whose There?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
