//
//  oneFlyApp.swift
//  oneFly
//
//  Created by Werton Silva on 28/10/23.
//

import SwiftUI

@main
struct oneFlyApp: App {
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                HomeView()
                .navigationDestination(for: Router.Destination.self) { destination in
                    switch destination {
                    case .details:
                        DetailsView()
                    case .profile(let userId):
                        ProfileView(id: userId)
                    }
                }
            }
            .environmentObject(router)
        }
    }
}
