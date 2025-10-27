//
//  profile.swift
//  MusicTutor
//
//  Created by a on 10/26/25.
//

import Foundation
import SwiftUI
import SwiftData

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            HomeTab()
        }
        .modelContainer(for: UserProfile.self)
    }
}


