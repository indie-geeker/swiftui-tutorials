//
//  LandmarkList.swift
//  swiftui-tutorials
//
//  Created by Wen on 2025/7/9.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmrk: landmark)
                }
                label: {
                    LandmarkRow(landmark: landmark)
                }
               
            }
            
            .navigationTitle("Landmarks")
        }
        detail: {
                    Text("Select a Landmark")
                }
       
    }
}

#Preview {
    LandmarkList()
}
