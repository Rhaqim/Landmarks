//
//  ProfileSummary.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 09/01/2024.
//

import SwiftUI

struct ProfileSummary: View {
    
    @Environment(ModelData.self) var modelData
    
    var profile:Profile
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(profile.username)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Notifications \(profile.prefersNotifications ? "ON" : "off")")
                Text("Seasonal photos \(profile.seasonalPhoto.rawValue)")
                Text("Goal date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Completed Badges").font(.headline)
                
                    ScrollView(.horizontal) {
                        
                        HStack {
                            
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day").hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike").grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/).hueRotation(Angle(degrees: 45))
                        }
                        
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default).environment(ModelData())
}
