//
//  LibraryViewModel.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 12/11/23.
//

import Foundation
import AVFoundation

final class LibraryViewModel: ObservableObject {
    @Published var videos: [Video] = []
    
    init() {
        // use mock data temporarily
        videos = MockData.videos
    }
    
    func getAVPlayer(for video: Video) -> AVPlayer {
        return AVPlayer(url: video.url)
    }
}
