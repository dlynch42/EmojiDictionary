//
//  EmojiDetailView.swift
//  EmojiDictionary
//
//  Created by Devin Lynch on 8/11/22.
//

import SwiftUI

struct EmojiDetailView: View {
    
    var emoji: Emoji
    
    var body: some View {
        VStack{
            Text(emoji.symbol)
                        .font(.system(size: 250))
            Text(emoji.definition)
            Text(String(repeating: "⭐️", count: emoji.rating))
                .font(.system(size: 30))
        }
        
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(emoji: Emoji(id: UUID(), symbol: "💰",
                                     definition: "Get that money", rating: 5))
    }
}
