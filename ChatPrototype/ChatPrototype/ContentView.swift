//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Veysel Demirel on 28/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: Color.gray, radius: 4, x: 0, y: 0)
            
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: Color.gray, radius: 4, x: 0, y: 0)
            
            Text("It's Veysel!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: Color.gray, radius: 4, x: 0, y: 0)
            
            Text("Come on in.")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color: Color.gray, radius: 4, x: 0, y: 0)
        }
    }
}

#Preview {
    ContentView()
}
