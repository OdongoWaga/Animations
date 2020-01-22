//
//  ContentView.swift
//  Animations
//
//  Created by JFJ on 17/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    
    var body: some View {
        Button("Tap Me") {
            
        }
    .padding(50)
        .background(Color.red)
        .foregroundColor(Color.white)
    .clipShape(Circle())
    .overlay(
        Circle()
            .stroke(Color.red)
        .scaleEffect(animationAmount)
        .opacity(Double(2-animationAmount))
        .animation(
            Animation.easeOut(duration: 1)
            .repeatForever(autoreverses: false)
        )
        )
            .onAppear{
                self.animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
