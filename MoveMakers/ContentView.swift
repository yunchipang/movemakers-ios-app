//
//  ContentView.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import SwiftUI
import FirebaseStorage

struct ContentView: View {
    
    let storageRef = Storage.storage().reference()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
