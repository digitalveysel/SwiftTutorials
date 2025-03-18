//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by Veysel Demirel on 01/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                Text("Design")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.mint.opacity(0.2), in: RoundedRectangle(cornerRadius: 8))
                Text("Code")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red.opacity(0.2), in: RoundedRectangle(cornerRadius: 8))
            }
            
            HStack(spacing: 20) {
                Text("Explore")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor.opacity(0.2), in: RoundedRectangle(cornerRadius: 8))
                Text("Discuss")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green.opacity(0.2), in: RoundedRectangle(cornerRadius: 8))
            }
            
            HStack(spacing: 20) {
                Text("Turkish Rap")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange.opacity(0.2), in: RoundedRectangle(cornerRadius: 8))
                Text("Learn")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.purple.opacity(0.2), in: RoundedRectangle(cornerRadius: 8))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
