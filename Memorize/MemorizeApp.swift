//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dr. Andreas Plagens on 28.06.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
