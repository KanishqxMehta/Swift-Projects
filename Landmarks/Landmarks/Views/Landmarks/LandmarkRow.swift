//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Kanishq Mehta on 04/11/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview{
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: Landmarks[0])
        LandmarkRow(landmark: Landmarks[1])
    }
}
