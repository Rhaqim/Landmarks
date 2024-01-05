//
//  FavouriteButton.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 05/01/2024.
//

import SwiftUI

struct FavouriteButton: View {
        
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle favorite", systemImage: isSet ? "star.fill": "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavouriteButton(isSet: .constant(true))
}
