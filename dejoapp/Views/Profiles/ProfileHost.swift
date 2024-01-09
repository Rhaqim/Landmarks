//
//  ProfileHost.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 09/01/2024.
//

import SwiftUI

struct ProfileHost: View {
    
    @State private var defaultProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ProfileSummary(profile: defaultProfile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
}
