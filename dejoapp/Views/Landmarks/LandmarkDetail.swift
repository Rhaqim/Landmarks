//
//  LandmarkDetail.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 04/01/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack() {
            MapView(coordinate: landmark.locationCoordinate).frame(height:300)
            
            ImageView(image: landmark.image).offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                HStack() {
                    Text(landmark.park)
                    
                    Spacer()
                    
                    Text(landmark.state)
                }.font(.subheadline).foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)").font(.title2)
                Text(landmark.description)
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
