//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Whales on 10/9/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            // 모델 데이터의 랜드마크 배열을 목록 이니셜라이저에 전달합니다.
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
