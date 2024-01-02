//
//  ContentView.swift
//  Memorize
//
//  Created by Max Udaskin on 2024-01-01.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["💩", "😂", "🤷🏻‍♂️", "😱"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let card = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                card.foregroundColor(.white)
                card.strokeBorder(lineWidth: 2)
                    Text(content).font(.largeTitle)
            } else {
                card
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
