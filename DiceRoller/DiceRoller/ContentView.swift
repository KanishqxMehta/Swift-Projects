//
//  ContentView.swift
//  DiceRoller
//
//  Created by Kanishq Mehta on 03/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numOfDice: Int = 3
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            
            HStack{
                ForEach(1...numOfDice, id: \.self){
                    _ in DiceView()
                        .foregroundStyle(.white)
                }
            }
            
            HStack {
                Button("Remove", systemImage: "minus.circle.fill"){
                    numOfDice -= 1
                }
                .disabled(numOfDice == 1)
                
                Button("Add", systemImage: "plus.circle.fill"){
                    numOfDice += 1
                }
                .disabled(numOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}


#Preview {
    ContentView()
}
