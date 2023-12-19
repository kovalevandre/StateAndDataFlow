//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Andrey Kovalev on 19.12.2023.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        
        Group {
            if userManager.user.isRegistered {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    RootView()
        .environmentObject(UserManager())
}
