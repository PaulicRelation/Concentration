//
//  ViewController.swift
//  Concentration
//
//  Created by Pavel on 9/1/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cardBackColor = UIColor.orange
    var deskTopColor = UIColor.black
    var emojiPack = ["🧛‍♀️","🧟‍♀️","🎃","🧟‍♂️","🕷","🍭","💀","🤡","👁","🦇","😱","🙀"]
    var themeName = "Hellowen"
    
    
    var themeIndex = 0 {
        didSet {
            themeName = theme[themeIndex].themeName
            emojiChoices = theme[themeIndex].emojiPack
            cardBackColor = theme[themeIndex].primaryColor
            deskTopColor = theme[themeIndex].backgroundColor

            updateTheme()
        }
        
    }

    lazy var emojiChoices = emojiPack
    lazy var game = Concentration (numberOfPairsOfCard: (cardButtons.count + 1)/2)
    
    var emoji = [Int: String]()

    @IBOutlet weak var themeTitleLabel: UILabel!
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var newGameButton: UIButton!
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        if let cardNumber = cardButtons.index(of: sender){
            game.choseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Chosen card is out of cardButtons")
        }

    }
    
    @IBAction func newGame(_ sender: UIButton) {
        game.resetGame()
        emoji = [Int: String]()
        themeIndex = theme.count.arc4random
        updateViewFromModel()
        
    }
    
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
            
        }
        return emoji[card.identifier] ?? "?"
        
    }
    
    func updateViewFromModel() {
        flipCountLabel.text = "flips: \(game.flips)"
        scoreLabel.text = "score: \(game.score)"
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.1970248288) : cardBackColor
            }
        }
            
    }

    func updateTheme() {
        view.backgroundColor = deskTopColor
        themeTitleLabel.text = themeName
        themeTitleLabel.textColor = cardBackColor
        scoreLabel.textColor = cardBackColor
        flipCountLabel.textColor = cardBackColor
        newGameButton.tintColor = UIColor.black
        newGameButton.setTitleColor(cardBackColor, for: .normal)
    }
    
}

