//
//  ContentView.swift
//  Memorize
//
//  Created by Max Udaskin on 2024-01-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let card = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                card.foregroundColor(.white)
                card.strokeBorder(lineWidth: 2)
                    Text("💩").font(.largeTitle)
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
