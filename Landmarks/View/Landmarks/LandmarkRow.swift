//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Wen on 2025/8/12.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
                .cornerRadius(5)
            
            VStack(alignment:.leading){
                Text(landmark.name)
                    .bold()
                
            #if !os(watchOS)
             Text(landmark.park)
                 .font(.caption)
                 .foregroundStyle(.secondary)
             #endif
                
            }
            
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        .padding(.vertical,4)
        
    }
}


#Preview {
    Group{
        let landmarks = ModelData().landmarks
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
    
}
