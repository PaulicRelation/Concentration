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
    
    func choseCard (at index: Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        }else {
            cards[index].isFaceUp = true
        }
        
    }
    
    init(numberOfPairsOfCard: Int) {
        for _ in 1 ... numberOfPairsOfCard {
            let card = Card()
            cards += [card,card]
        }
        //TODO: Suffle the cards

    }
    
}
