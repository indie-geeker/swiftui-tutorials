//
//  RotatedBadgeSymbol.swift
//  swiftui-tutorials
//
//  Created by Wen on 2025/7/10.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle:Angle
    var body: some View {
        Badgesymbol()
            .padding(-60)
            .rotationEffect(angle,anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
