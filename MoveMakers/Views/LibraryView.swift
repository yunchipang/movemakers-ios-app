//
//  LibraryView.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import SwiftUI
import FirebaseStorage

struct LibraryView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    private var imageFileName = "IMG_5369-min.JPG"
    @State private var imageToLoad: UIImage?
    
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
            downloadImage(imageFileName: imageFileName)
        })
    }
    
    var imagesRef: StorageReference {
        return Storage.storage().reference().child("images")
    }
    
    func downloadImage(imageFileName: String) {
        let downloadRef = imagesRef.child(imageFileName)
        
        downloadRef.getData(maxSize: 2 * 1024 * 1024) { data, error in
            if let error = error {
                print("Error loading image: \(error.localizedDescription)")
            } else {
                if let data = data, let loadedImage = UIImage(data: data) {
                    self.imageToLoad = loadedImage
                } else {
                    print("invalid image data")
                }
            }
        }
    }
}
