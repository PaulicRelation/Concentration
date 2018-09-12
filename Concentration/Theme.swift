//
//  Theme.swift
//  Concentration
//
//  Created by Pavel on 9/9/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import UIKit

private struct Theme {
    var themePackName: String
    var emojiPack: [String]
    var cardBackColor: UIColor
    var deskTopColor: UIColor
    
}
private let    emojiPacks :[Theme] = [
    Theme (themePackName: "Animal",
           emojiPack: ["🦆","🐛","🦋","🐝","🐌","🐞","🐬","🐳","🐋","🦈","🐊","🐢"],
           cardBackColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
           deskTopColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    ),
    
    Theme (themePackName: "Sport",
           emojiPack: ["🏄‍♀️","🏂","⚽️","🏀","🏈","🎾","🏐","🏉","🎱","🏆","🧘🏼‍♀️","🏋🏻‍♂️"],
           cardBackColor: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1),
           deskTopColor: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    ),
    Theme (themePackName: "Fruit",
           emojiPack: ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🍈","🍒","🍑"],
           cardBackColor: #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1),
           deskTopColor: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    ),
    Theme (themePackName: "Flags",
           emojiPack: ["🇺🇸","🇧🇷","🇨🇦","🇨🇺","🇦🇷","🇺🇦","🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇬🇧","🇹🇷","🇺🇾","🇪🇭","🇹🇨"],
           cardBackColor: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1),
           deskTopColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
    ),
    Theme (themePackName: "Transport",
           emojiPack: ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐","🚚","🚜"],
           cardBackColor: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1),
           deskTopColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    ),
    
    Theme (themePackName: "Food",
           emojiPack: ["🥞","🥓","🥩","🍗","🍖","🌭","🍔","🍟","🍕","🥪","🥙","🌮"],
           cardBackColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1),
           deskTopColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    ),]

