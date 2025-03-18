//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Veysel Demirel on 06/03/2025.
//

import SwiftUI

let gradientColor: [Color] = [.gradientTop, .gradientBottom
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColor))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
