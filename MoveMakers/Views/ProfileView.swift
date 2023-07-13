//
//  ProfileView.swift
//  MoveMakers
//
//  Created by Yunchi Pang on 7/13/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://i.pravatar.cc/150?img=2"))
                .clipShape(Circle())
            Text("Leonardo Bae")
            Text("💃🏻 Instructor | Choreographer")
            Text("✨ Hip hop | Afro | Reggaetón")
            Text("📍In the Groove Studios")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
