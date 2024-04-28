//
//  CardView.swift
//  Memorize
//
//  Created by DJC on 4/11/24.
//

import SwiftUI

struct CardView: View {

    var emoji: String 
    var body: some View {
        ZStack {
            let card = RoundedRectangle(cornerRadius: 12.0)
            if isFaceUp {
                card.fill(.white)
                card.strokeBorder(lineWidth: 3)
                Text(emoji).font(.largeTitle)
            } else {
                card.fill(.red)
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}
