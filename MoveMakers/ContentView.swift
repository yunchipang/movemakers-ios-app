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
        TabView {
            NavigationView {
                HomeView()
            }
           .tabItem {
               Image(systemName: "house.fill")
               Text("Home")
                   .font(.title)
            }
           
            NavigationView {
                LibraryView()
            }
            .tabItem {
                Image(systemName: "folder.fill")
                Text("Library")
                    .font(.title)
             }
           
            NavigationView {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
