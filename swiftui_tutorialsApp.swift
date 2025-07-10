//
//  swiftui_tutorialsApp.swift
//  swiftui-tutorials
//
//  Created by Wen on 2025/7/9.
//

import SwiftUI

@main
struct swiftui_tutorialsApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
