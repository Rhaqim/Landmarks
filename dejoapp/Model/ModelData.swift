//
//  ModelData.swift
//  dejoapp
//
//  Created by Anusiem John-Franklin on 04/01/2024.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ fileName: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main Bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Coundln'tload file \(fileName) from main Bundke:\n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Coundl't parse \(fileName) into \(T.self): \n\(error)")
    }
}
