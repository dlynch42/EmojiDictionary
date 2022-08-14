//
//  ContentView.swift
//  EmojiDictionary
//
//  Created by Devin Lynch on 8/10/22.
//

import SwiftUI

struct EmojiListView: View {
    
    // array of emoji instances
    var emojis: [Emoji] = [Emoji(id: UUID(), symbol: "😂",
                                 definition: "The real laughing emoji", rating: 5),
                           Emoji(id: UUID(), symbol: "😎",
                                 definition: "Cool shades bro", rating: 3),
                           Emoji(id: UUID(), symbol: "😏",
                                 definition: "Hehehe", rating: 4),
                           Emoji(id: UUID(), symbol: "💰",
                                 definition: "Get that money", rating: 5)]
    
    var body: some View {
        NavigationView {
            List(emojis) { emoji in
                NavigationLink(destination:
                                EmojiDetailView(emoji: emoji)) {
                    Text("\(emoji.symbol)")
                }
            }
            .navigationTitle("Emoji Dictionary: \(emojis.count)")
        }
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
    var definition: String
    var rating: Int
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
