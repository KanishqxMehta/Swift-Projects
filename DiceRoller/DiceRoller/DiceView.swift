//
//  DiceView.swift
//  DiceRoller
//
//  Created by Kanishq Mehta on 03/05/24.
//

import SwiftUI

struct DiceView: View {
    @State var numOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numOfPips).fill")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
                .onTapGesture {
                    withAnimation{
                        numOfPips = Int.random(in: 1...6)
                    }
                }
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
