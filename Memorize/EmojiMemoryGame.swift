//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dr. Andreas Plagens on 10.07.21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject
{
    static let emojis = ["🚲","🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚃", "✈️", "🚁", "🚝", "🚞", ",🛰", "🚑", "🏍", "🛴", "🚢", "🛥", "🛵", "🚤", "⛵️", "🛶", "⛴"]
    
    @Published private var model = MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    
    var cards: Array<MemoryGame<String>.Card> { model.cards }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card)
    {
        model.choose(card)
    }
    
}
