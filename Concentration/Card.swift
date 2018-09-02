//
//  Card.swift
//  Concentration
//
//  Created by Pavel on 9/2/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import Foundation
struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier :Int
    
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
        Card.identifierFactory += 1
        return Card.identifierFactory
        
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
        
    }
    
    
}
