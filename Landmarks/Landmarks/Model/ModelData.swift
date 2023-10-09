//
//  ModelData.swift
//  Landmarks
//
//  Created by Whales on 10/9/23.
//

import Foundation

class ModelData: ObservableObject {
    var landmarks: [Landmark] = load("landmarkData.json") // 초기화 하는 배열
}

// 앱의 메인 번들에서 특정 이름의 JSON 데이터를 가져오는 load(_:) 메서드
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
