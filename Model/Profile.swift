//
//  Profile.swift
//  swiftui-tutorials
//
//  Created by Wen on 2025/7/10.
//

import Foundation

struct Profile{
    var username: String
        var prefersNotifications = true
        var seasonalPhoto = Season.winter
        var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season:String,CaseIterable,Identifiable{
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id:String{ rawValue }
    }
}
