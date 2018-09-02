//
//  ViewController.swift
//  Concentration
//
//  Created by Pavel on 9/1/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = Concentration (numberOfPairsOfCard: (cardButtons.count + 1)/2)
    
    var emojiCoices = ["👻","🙀","🦇","🎃","🍭", "😈","💀", "🍪", "😱"]
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "flips: \(flipCount)"
          
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        if let cardNumber = cardButtons.index(of: sender){
            game.choseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Chosen card is out of cardButtons")
        
        }
        
        flipCount += 1
        
    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.1970248288) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
            
    }

    func emoji(for card: Card) -> String {
        return "?"
    }
    
}

