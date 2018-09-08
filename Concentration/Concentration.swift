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
    var flips = 0
    var score = 0
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func choseCard (at index: Int) {
        
        if !cards[index].isMatched {
            if let machIndex = indexOfOneAndOnlyFaceUpCard, machIndex != index {
                if cards[machIndex].identifier == cards[index].identifier {
                    cards[index].isMatched = true
                    cards[machIndex].isMatched = true
                    score += 2
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
            if cards[index].isOpenedBefore { score -= 1}
        }
        flips += 1
        cards[index].isOpenedBefore = true
    
    }
    
    func resetGame (){
        for index in cards.indices {
            cards[index].isFaceUp = false
            cards[index].isMatched = false
        }
        cards.suffleElements()
        flips = 0
        score = 0
        
    }
    
    init(numberOfPairsOfCard: Int) {
        for _ in 1 ... numberOfPairsOfCard {
            let card = Card()
            cards += [card,card]
        }
        cards.suffleElements()
    }
    
}
