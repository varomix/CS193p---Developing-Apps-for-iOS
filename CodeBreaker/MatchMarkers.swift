//
//  MatchMarkers.swift
//  CodeBreaker
//
//  Created by Alvaro Castaneda on 2/18/26.
//
import SwiftUI

enum Match {
    case nomatch
    case exact
    case inexact
}


struct MatchMarkers: View {
    var matches: [Match]
    
    var body: some View {
        HStack {
            VStack{
                matchMarker(peg: 0)
                matchMarker(peg: 1)
            }
            VStack {
                matchMarker(peg: 2)
                matchMarker(peg: 3)
            }
        }
    }
    
    @ViewBuilder
    func matchMarker(peg: Int) -> some View {
        let exactCount: Int = matches.count(where: {match in match == .exact})
        let foundCount: Int = matches.count(where: {match in match != .nomatch})
        Circle()
            .fill(exactCount > peg ? Color.primary : Color.clear)
            .strokeBorder(foundCount > peg ? Color.primary : Color.clear,
                          lineWidth: 2).aspectRatio(contentMode: .fit)
    }
}

#Preview {
    MatchMarkers(matches: [.exact, .inexact, .nomatch])
}
