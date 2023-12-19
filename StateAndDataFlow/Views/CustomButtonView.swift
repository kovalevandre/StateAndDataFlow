//
//  CustomButtonView.swift
//  StateAndDataFlow
//
//  Created by Andrey Kovalev on 19.12.2023.
//

import SwiftUI

struct CustomButtonView: View {
    let text: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(.black, lineWidth: 4))
    }
}

#Preview {
    CustomButtonView(text: "Go ahead", color: .green, action: {})
}
