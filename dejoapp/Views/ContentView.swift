//
//  ContentView.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 03/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
