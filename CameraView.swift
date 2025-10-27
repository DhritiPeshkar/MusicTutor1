//
//  CameraView.swift
//  MusicTutor
//
//  Created by Dhriti Peshkar on 10/25/25.
//

import SwiftUI
import Foundation
import AVFoundation

class PreviewView: CameraView {
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    /// Convenience wrapper to get layer as its statically known type.
    var videoPreviewLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }
}
