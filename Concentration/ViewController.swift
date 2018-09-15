//
//  ViewController.swift
//  Concentration
//
//  Created by Pavel on 9/1/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var cardBackColor = UIColor.orange
    private var deskTopColor = UIColor.black
    private var emojiPack = ["🧛‍♀️","🧟‍♀️","🎃","🧟‍♂️","🕷","🍭","💀","🤡","👁","🦇","😱","🙀", "👹", "👻", "☠️", "👺", "🧛‍♂️", "🧙‍♀️", "🧝🏿‍♀️",]
    private var themeName = "Hellowen"
    
    private var themeIndex = 0 {
        didSet {
            themeName = theme[themeIndex].themeName
            emojiChoices = theme[themeIndex].emojiPack
            cardBackColor = theme[themeIndex].primaryColor
            deskTopColor = theme[themeIndex].backgroundColor
            updateTheme()
        }
    }

    private lazy var emojiChoices = emojiPack
    private lazy var game = Concentration (numberOfPairsOfCard: (cardButtons.count + 1)/2)

    @IBOutlet private weak var themeTitleLabel: UILabel!
    @IBOutlet private weak var flipCountLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    @IBOutlet private var cardButtons: [UIButton]!
    @IBOutlet private weak var newGameButton: UIButton!
    
    @IBAction private func touchCard(_ sender: UIButton) {
        
        if let cardNumber = cardButtons.index(of: sender){
            game.choseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Chosen card is out of cardButtons")
        }

    }
    
    @IBAction private func newGame(_ sender: UIButton) {
        game.resetGame()
        emoji = [Card: String]()
        themeIndex = theme.count.arc4random
        updateViewFromModel()
        
    }
  
    
    private var emoji = [Card: String]()
    
    private func emoji(for card: Card) -> String {
        if emoji[card] == nil, emojiChoices.count > 0 {
            emoji[card] = emojiChoices.remove(at: emojiChoices.count.arc4random)
            
        }
        return emoji[card] ?? "?"
        
    }
    
    private func updateViewFromModel() {
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

    private func updateTheme() {
        view.backgroundColor = deskTopColor
        themeTitleLabel.text = themeName
        themeTitleLabel.textColor = cardBackColor
        scoreLabel.textColor = cardBackColor
        flipCountLabel.textColor = cardBackColor
        newGameButton.tintColor = UIColor.black
        newGameButton.setTitleColor(cardBackColor, for: .normal)
    }
    
}

