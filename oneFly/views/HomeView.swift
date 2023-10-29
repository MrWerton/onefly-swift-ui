//
//  HomeView.swift
//  oneFly
//
//  Created by Werton Silva on 29/10/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        Button("Hello"){
            router.navigate(to: .profile(userId: "werton"))
        }
            
    }
}

#Preview {
    HomeView()
}
