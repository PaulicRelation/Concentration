//
//  ViewController.swift
//  Concentration
//
//  Created by Pavel on 9/1/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "flips: \(flipCount)"
          
        }
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        
        flipCard(withEmoji: "👻", on: sender)
        flipCount += 1
        
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    
    func flipCard (withEmoji emoji: String, on button: UIButton) {
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle("👻", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

