//
//  LandmarkDetail.swift
//  swiftui-tutorials
//
//  Created by Wen on 2025/7/9.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmrk:Landmark
    var body: some View {
        ScrollView{
            MapView(coordinate: landmrk.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmrk.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text(landmrk.name)
                    .font(.title)
                    .foregroundColor(.blue)
                
                HStack{
                    Text(landmrk.park)
                        .font(.subheadline)
                    Spacer()
                    
                    Text(landmrk.state)
                }
                
                Divider()


                Text("About \(landmrk.name)")
                      .font(.title2)
                Text(landmrk.description)
                
            }
            .padding()
        }
        .navigationTitle(landmrk.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmrk: landmarks[0])
}
