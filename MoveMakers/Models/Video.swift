//
//  Video.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 12/11/23.
//

import Foundation

struct Video {
    let id: Int
    let date: String
    let music: String
    let choreographer: String
    let name: String
    let url: URL
    let style: String
    let studio: String
}

//struct VideoResponse: Decodable {
//    let request: [Video]
//}

struct MockData {
    static let sampleVideo = Video(id: 1,
                                   date: "2023-11-12",
                                   music: "Tinashe - Needs",
                                   choreographer: "Daniel Kang",
                                   name: "tinashe-needs",
                                   url: URL(string: "gs://movemakers-696fc.appspot.com/videos/tinashe-needs.mov")!,
                                   style: "Hip-Hop",
                                   studio: "In The Groove")

    static let videos = [sampleVideo, sampleVideo, sampleVideo]
}
