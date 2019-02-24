//
//  Extentions.swift
//  Concentration
//
//  Created by Pavel on 9/8/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import Foundation

extension Int {
    
    //extention  returned random in from Range from 0 to Int
    
    var arc4random : Int {
        if self > 0 { return Int(arc4random_uniform(UInt32(self)))
        }else
            if self < 0 {return -Int((arc4random_uniform(UInt32(abs(self)))))
            }   else {return 0}
    }
}

extension Array {
    
    //extention for randomize suffle elements in array. Used extention arc4random
    
    mutating func suffleElements() {
        
        if count < 2 {return}
        
        for i in indices.dropLast() {
            let j = index(i, offsetBy: distance(from: i, to: endIndex).arc4random)
            swapAt(i, j)
            
        }
    }
}

extension Collection {
    
    var OneAndOnly: Element? {
        return count == 1 ? first : nil
    }
    
}
