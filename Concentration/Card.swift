//
//  Card.swift
//  Concentration
//
//  Created by Pavel on 9/2/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import Foundation

struct Card: Hashable
{
    var isFaceUp = false
    var isMatched = false
    var isOpenedBefore = false
    private var identifier :Int
    
    var hashValue: Int {return identifier} // conform to Hasable
    static func == (lhs: Card, rhs: Card) -> Bool { return lhs.identifier == rhs.identifier } // conform to Equatable
    
    private static var identifierFactory = 0
    private static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory
        
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
        
    }
    
    
}
