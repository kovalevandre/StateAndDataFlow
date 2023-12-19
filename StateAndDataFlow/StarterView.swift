//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Andrey Kovalev on 19.12.2023.
//

import SwiftUI

struct StarterView: View {
    
    @StateObject private var userManager = UserManager()
    
    var body: some View {
        Group {
            if userManager.user.isRegastered {
                ContentView()
            } else {
                RegisterView()
            }
        }
        .environmentObject(userManager)
    }
}

#Preview {
    StarterView()
}
