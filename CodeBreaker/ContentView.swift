//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Alvaro Castaneda on 2/17/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "dog")
            if true {
                Text("Greetings, Code Breaker!")
            }
            Circle()
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
