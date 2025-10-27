//
//  ContentView.swift
//  MusicTutor
//
//  Created by Dhriti Peshkar on 10/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeTab()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            
            CameraView()
                .tabItem {
                    Label("Video", systemImage: "camera")
                }
            AiTab()
                .tabItem {
                    Label("Get feedback", systemImage: "gear")
                }
        }
    }
}

// Use #Preview ONLY outside of the struct
#Preview {
    ContentView()
}
