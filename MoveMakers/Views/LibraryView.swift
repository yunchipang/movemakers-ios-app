//
//  LibraryView.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import SwiftUI
import FirebaseStorage

struct LibraryView: View {
    
    @State var imageToLoad: UIImage?
    private var imageFileName = "IMG_5369-min.JPG"

    var body: some View {
        VStack {
            Text("Library view")
            
            if let image = imageToLoad {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Text("Image loading...")
            }
        }
        .onAppear(perform: {
            ImageDownloader.downloadImage(imageFileName: imageFileName) { loadedImage in
                imageToLoad = loadedImage
            }
        })
    }
}
