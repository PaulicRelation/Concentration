//
//  Concentration.swift
//  Concentration
//
//  Created by Pavel on 9/2/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import Foundation

struct Concentration
{
    private (set) var cards = [Card]()
    private (set) var flips = 0
    private (set) var score = 0
    
    private var indexOfOneAndOnlyFaceUpCard: Int? {
        get { return cards.indices.filter {cards[$0].isFaceUp}.OneAndOnly
            
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
        
    }
    
    mutating func choseCard (at index: Int) {
        assert(cards.indices.contains(index), "Concentration.chooseCard (at \(index)): chusen index not in the cards)")
        
        if !cards[index].isMatched {
            if let machIndex = indexOfOneAndOnlyFaceUpCard, machIndex != index {
                if cards[machIndex]  == cards[index]  {
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
    
    mutating func resetGame (){
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
            assert(numberOfPairsOfCard > 0, "Concentration.init (\(numberOfPairsOfCard): you must have at least one pair of cards")
            
            let card = Card()
            cards += [card,card]
        }
        cards.suffleElements()
    }
    
}
