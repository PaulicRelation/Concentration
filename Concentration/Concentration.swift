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
    private (set) var cards = [Card]()
    private (set) var flips = 0
    private (set) var score = 0
    
    private var indexOfOneAndOnlyFaceUpCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp{
                    if foundIndex == nil {
                        foundIndex = index
                    }else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
            
        }
    }
    
    func choseCard (at index: Int) {
        
        if !cards[index].isMatched {
            if let machIndex = indexOfOneAndOnlyFaceUpCard, machIndex != index {
                if cards[machIndex].identifier == cards[index].identifier {
                    cards[index].isMatched = true
                    cards[machIndex].isMatched = true
                    score += 2
                }
                cards[index].isFaceUp = true
            } else {
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
