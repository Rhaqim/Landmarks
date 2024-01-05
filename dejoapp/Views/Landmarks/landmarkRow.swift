//
//  landmarkRow.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 04/01/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack(){
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}


#Preview {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
}
