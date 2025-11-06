//
//  ContentView.swift
//  PaperRockScissors
//
//  Created by Ihor Sukhachov on 06.11.2025.
//

import SwiftUI
let possibleMoves: [String] = ["rock", "paper", "scissors"]




struct ContentView: View {
    @State private var appMove: Int = Int.random(in: 0...2)
    @State private var userMove: Int = 0
    @State private var shouldWin = true
    @State private var score = 0
    @State private var round = 1
    
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
