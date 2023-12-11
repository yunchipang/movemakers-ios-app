//
//  LibraryView.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import SwiftUI
//import FirebaseStorage
import AVKit
import AVFoundation
//import _AVKit_SwiftUI


struct LibraryView: View {
    
//    var imageFileName = "IMG_5369-min.JPG"
//    var videoUrl: String = "gs://movemakers-696fc.appspot.com/videos/473F5ED1-213E-4B4E-BF83-2B0305AEC14C.MOV"
    
    
    // display a local video (temp)
    var videoFileName = "tinashe-needs";
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: videoFileName, withExtension: "mov")!)) {
            }
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(1.0, contentMode: .fit) // Maintain a square aspect ratio
            .padding(.all)
            .cornerRadius(15)
            .background(Color.white)
        }
    }
    
}
