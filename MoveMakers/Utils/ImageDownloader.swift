//
//  ImageDownloader.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import FirebaseStorage

class ImageDownloader {
    private static let imagesRef = Storage.storage().reference().child("images")

    static func downloadImage(imageFileName: String, completion: @escaping (UIImage?) -> Void) {
        let downloadRef = imagesRef.child(imageFileName)

        downloadRef.getData(maxSize: 2 * 1024 * 1024) { data, error in
            if let error = error {
                print("Error loading image: \(error.localizedDescription)")
                completion(nil)
            } else {
                if let data = data, let loadedImage = UIImage(data: data) {
                    completion(loadedImage)
                } else {
                    print("Invalid image data")
                    completion(nil)
                }
            }
        }
    }
}
