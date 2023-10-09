//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Whales on 10/9/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                // 즐겨찾기 하면 별
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow) // 오 색 변경 가능
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}
