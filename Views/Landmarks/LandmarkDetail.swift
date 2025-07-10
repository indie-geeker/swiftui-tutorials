//
//  LandmarkDetail.swift
//  swiftui-tutorials
//
//  Created by Wen on 2025/7/9.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmrk:Landmark
    
    var landmarkIndex:Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmrk.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView{
            MapView(coordinate: landmrk.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmrk.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                HStack{
                    Text(landmrk.name)
                        .font(.title)
                        .foregroundColor(.blue)
                    
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
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
    let modelData = ModelData()
    
    LandmarkDetail(landmrk: modelData.landmarks[0])
        .environment(modelData)
}
