//
//  EmojiMemoryGame.swift
//  Memorize
//  View Model
//  Created by DJC on 4/11/24.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "🎺"
}

class EmojiMemoryGame {
    static let emojis = ["🚂","🚃","🚄","🚅","🚆","🚇","🚈","🚉","🚊","🚝","🚞","🚋","🚌","🚍","🚎","🚐","🚑","🚒","🚓","🚔","🚕","🚖","🚗","🚘","🚙","🛻","🚚","🚛","🚜","🏎️","🏍️","🛵"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
}
