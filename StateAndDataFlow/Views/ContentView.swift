//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Andrey Kovalev on 18.12.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            CustomButtonView(
                text: timer.buttonTitle,
                color: .red,
                action: timer.startTimer
            )
            .padding(.bottom, 16)
            
            Spacer()
            
            CustomButtonView(text: "LogOut", color: .blue) {
                DataManager.shared.clear(userManager: userManager)
            }
            .padding(.bottom, 16)
        }
    }
}
        
    #Preview {
        ContentView()
            .environmentObject(UserManager())
    }
    
