//
//  LandmarkDetail.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 04/01/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate).frame(height:300)
            
            ImageView(image: landmark.image).offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    Text(landmark.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    FavouriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
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
    let modelData = ModelData()
        return LandmarkDetail(landmark: modelData.landmarks[0])
            .environment(modelData)
}
