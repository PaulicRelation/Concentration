//
//  Concentration.swift
//  Concentration
//
//  Created by Pavel on 9/2/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import Foundation
class Concentration
{
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func choseCard (at index: Int) {
        
        if !cards[index].isMatched {
            if let machIndex = indexOfOneAndOnlyFaceUpCard, machIndex != index {
                if cards[machIndex].identifier == cards[index].identifier {
                    cards[index].isMatched = true
                    cards[machIndex].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                for flipdownIndex in cards.indices {
                    cards[flipdownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
        
    }
    
    
    func suffleCards() {
        for  index in 0 ... cards.count-1 {
            let randomIndex = Int(arc4random_uniform(UInt32(Int(cards.count-2))))
            let temp = cards[randomIndex]
            cards[randomIndex] = cards[index]
            cards[index] = temp
        }
        
    }
    
    init(numberOfPairsOfCard: Int) {
        for _ in 1 ... numberOfPairsOfCard {
            let card = Card()
            cards += [card,card]
        }
        suffleCards()

    }
    
}
