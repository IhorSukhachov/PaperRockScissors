//
//  ContentView.swift
//  PaperRockScissors
//
//  Created by Ihor Sukhachov on 06.11.2025.
//
import SwiftUI

struct ContentView: View {
    // Possible moves
    let moves = ["🪨", "📄", "✂️"]
    
    // Game state
    @State private var appMove = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()
    @State private var score = 0
    @State private var round = 1
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .purple],
                           startPoint: .top,
                           endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Round \(round)/10")
                    .font(.title2)
                    .foregroundStyle(.white)
                
                Text("Score: \(score)")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                
                VStack {
                    Text("App chose:")
                        .foregroundStyle(.white)
                    Text(moves[appMove])
                        .font(.system(size: 80))
                }
                
                Text("You need to \(shouldWin ? "WIN" : "LOSE")")
                    .font(.title.bold())
                    .foregroundStyle(.yellow)
                
                Spacer()
                
                HStack(spacing: 30) {
                    ForEach(0..<3) { number in
                        Button {
                            //             playerTapped(number)
                        } label: {
                            Text(moves[number])
                                .font(.system(size: 50)).foregroundStyle(.white)
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
