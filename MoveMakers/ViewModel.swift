//
//  ViewModel.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import Foundation
import SwiftUI
#if !os(macOS)
  import UIKit
#endif

@MainActor
class ViewModel: ObservableObject {
  @Published var image: Image?
  #if os(iOS) || os(tvOS)
    @Published var inputImage: UIImage?
  #elseif os(macOS)
    @Published var inputImage: NSImage?
  #endif
  @Published var downloadPicButtonEnabled: Bool = false
  @Published var downloadDone: Bool = false
  @Published var downloadedImage: Image?
  @Published var errorFound: Bool = false
  @Published var errInfo: Error?
  @Published var fileUploaded: Bool = false
  @Published var fileDownloadURL: URL?
  @Published var fileLocalDownloadURL: URL?
  @Published var isLoading: Bool = false
  @Published var remoteStoragePath: String?
}
