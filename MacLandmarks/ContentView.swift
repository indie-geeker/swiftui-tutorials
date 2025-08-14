//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Wen on 2025/8/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
