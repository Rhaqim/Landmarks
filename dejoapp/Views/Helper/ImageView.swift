//
//  ImageView.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 04/01/2024.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle()
                .stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}

#Preview {
    ImageView(image: Image("turtlerock"))
}
