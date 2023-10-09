//
//  Landmark.swift
//  Landmarks
//
//  Created by Whales on 10/9/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable { // 이거 하면 id 없어도 됨. 민섭한테 배움
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        // MapKit 프레임워크와 상호작용하는 데 유용한 locationCoordinate 속성 계산
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
