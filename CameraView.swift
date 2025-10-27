//
//  CameraView.swift
//  MusicTutor
//
//  Created by Dhriti Peshkar on 10/25/25.
//

import SwiftUI
import AVFoundation
import _AVKit_SwiftUI

struct CameraView: View {
    @State private var showPicker = false
    @State private var videoURL: URL?

    var body: some View {
        VStack(spacing: 20) {
            if let videoURL = videoURL {
                VideoPlayer(player: AVPlayer(url: videoURL))
                   // .frame(height: 300)
                
                Button("Upload Video") {
                    uploadVideo(videoURL)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
            }

            Button("Upload Video") {
                showPicker = true
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            Button("Record Video")
            {
                
            }
        }
        .sheet(isPresented: $showPicker) {
            VideoPicker(videoURL: $videoURL)
        }
    }

    func uploadVideo(_ url: URL) {
        // Placeholder upload logic — replace this with Firebase/AWS/etc.
        print("Uploading video at: \(url.path)")
    }
}

#Preview {
    CameraView()
}

