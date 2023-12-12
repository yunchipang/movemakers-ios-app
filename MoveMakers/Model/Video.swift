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

struct MockData {
    static let sampleVideo1 = Video(id: 1,
                                   date: "2023-11-12",
                                   music: "Tinashe - Needs",
                                   choreographer: "Daniel Kang",
                                   name: "tinashe-needs",
                                   url: URL(string: "gs://movemakers-696fc.appspot.com/videos/tinashe-needs.mov")!,
                                   style: "Hip-Hop",
                                   studio: "In The Groove")

    static let sampleVideo2 = Video(id: 2,
                                   date: "2023-11-19",
                                   music: "Tyla - Water",
                                   choreographer: "Anna Miera",
                                   name: "tyla-water",
                                   url: URL(string: "gs://movemakers-696fc.appspot.com/videos/tyla-water.mov")!,
                                   style: "",
                                   studio: "In The Groove")
    static let sampleVideo3 = Video(id: 3,
                                   date: "2023-11-19",
                                   music: "Ravyn Lenae - Closer",
                                   choreographer: "Zack Jot",
                                   name: "ravynlenae-closer",
                                   url: URL(string: "gs://movemakers-696fc.appspot.com/videos/ravynlenae-closer.mov")!,
                                   style: "Hip-Hop",
                                   studio: "In The Groove")

    static let videos = [sampleVideo1, sampleVideo2, sampleVideo3]
}
