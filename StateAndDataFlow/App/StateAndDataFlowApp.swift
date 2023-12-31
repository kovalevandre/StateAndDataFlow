//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Andrey Kovalev on 18.12.2023.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    private let user = DataManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(UserManager(user: user))
        }
    }
}
