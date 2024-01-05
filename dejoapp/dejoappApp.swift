//
//  dejoappApp.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 03/01/2024.
//

import SwiftUI

@main
struct dejoappApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
