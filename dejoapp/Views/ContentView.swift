//
//  ContentView.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 03/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            MapView().frame(height:300)
            
            ImageView().offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack() {
                    Text("Joshua Tree national Park")
                    Spacer()
                    Text("California")
                }.font(.subheadline).foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock").font(.title2)
                Text("Description about Turtle Rock")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
