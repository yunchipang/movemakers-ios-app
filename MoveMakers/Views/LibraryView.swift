//
//  LibraryView.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import SwiftUI
import FirebaseStorage
import AVKit
import _AVKit_SwiftUI
import AVFoundation

struct LibraryView: View {
    
    var imageFileName = "IMG_5369-min.JPG"
//    var videoUrl: String = "gs://movemakers-696fc.appspot.com/videos/473F5ED1-213E-4B4E-BF83-2B0305AEC14C.MOV"
    var videoUrl: URL? {
        Bundle.main.url(forResource: "473F5ED1-213E-4B4E-BF83-2B0305AEC14C", withExtension: "MOV")
    }
    
    @State var imageToLoad: UIImage?
    @State var player = AVPlayer()

    var body: some View {
        VStack {
            
            // load image
            if let image = imageToLoad {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Text("Image loading...")
            }
            
            // load video
            if let videoUrl {
                VideoPlayer(player: AVPlayer(url: videoUrl))
            } else {
                Text("failed to get video URL!")
            }
        }
        .onAppear(perform: {
            ImageDownloader.downloadImage(imageFileName: imageFileName) { loadedImage in
                imageToLoad = loadedImage
            }
        })
    }
}
