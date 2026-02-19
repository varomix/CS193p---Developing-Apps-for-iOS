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
            pegs(colors: [.red, .green, .green, .yellow])
            pegs(colors: [.blue, .green, .red, .yellow])
            pegs(colors: [.red, .blue, .orange, .blue])
        }
        .padding()
    }
    
    //func pegs(colors: Array<Color> = []) -> some View { // both options are the same
    func pegs(colors: [Color] = []) -> some View {
        HStack {
            ForEach(colors.indices, id: \.self) {index in
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarkers(matches: [.exact, .inexact, .nomatch, .exact])
    
        }
    }
}


#Preview {
    ContentView()
}
