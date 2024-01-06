//
//  RotatedBadge.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 06/01/2024.
//

import SwiftUI

struct RotatedBadge: View {
        
    let angle: Angle
    
    var body: some View {
        BadgeSymbol().padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadge(angle: Angle(degrees: 5))
}
