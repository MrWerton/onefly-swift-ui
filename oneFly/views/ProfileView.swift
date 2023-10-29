//
//  ProfileView.swift
//  oneFly
//
//  Created by Werton Silva on 29/10/23.
//

import SwiftUI

struct ProfileView: View {
       var id: String
    @EnvironmentObject var router: Router 

    var body: some View {
        Text("Hello, Profile \(id)")
    }
}

#Preview {
    ProfileView(id: "notrew")
}
