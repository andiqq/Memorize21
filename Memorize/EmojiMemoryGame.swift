//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dr. Andreas Plagens on 10.07.21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject
{
    typealias Card = MemoryGame<String>.Card
    
    // static let emojis = ["🚲","🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚃", "✈️", "🚁", "🚝", "🚞", ",🛰", "🚑", "🏍", "🛴", "🚢", "🛥", "🛵", "🚤", "⛵️", "🛶", "⛴"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🚲","🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🛺", "🚃", "✈️", "🚁", "🚝", "🚞", ",🛰", "🚑", "🏍", "🛴", "🚢", "🛥", "🛵", "🚤", "⛵️", "🛶", "⛴"]
        return MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> { model.cards }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
    
}
