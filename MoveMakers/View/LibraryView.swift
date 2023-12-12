//
//  LibraryView.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import SwiftUI
import FirebaseStorage
import AVKit
import AVFoundation
//import _AVKit_SwiftUI


struct LibraryView: View {
    
    @StateObject private var viewModel = LibraryViewModel()
    
    var body: some View {
        VStack {
            ForEach(viewModel.videos, id: \.id) { video in
                // todo: remote
                
                // local
                if let videoURL = Bundle.main.url(forResource: video.name, withExtension: "mov") {
                    VideoPlayer(player: AVPlayer(url: videoURL)) {
                        // additional video player customization if needed
                    }
                    .edgesIgnoringSafeArea(.all)
                    .padding(.all)
                    .background(Color.white)
                } else {
                    Text("Error loading video for \(video.name)")
                        .foregroundColor(.red)
                }
            }
        
        }
    }
}
