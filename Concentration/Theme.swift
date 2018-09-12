//
//  Theme.swift
//  Concentration
//
//  Created by Pavel on 9/9/18.
//  Copyright © 2018 Pavel. All rights reserved.
//

import UIKit

struct Theme {
    var themeName: String
    var emojiPack: [String]
    var primaryColor: UIColor
    var backgroundColor: UIColor
    
}

let    theme :[Theme] = [
    
    Theme (themeName: "Hellowen",
           emojiPack: ["🧛‍♀️","🧟‍♀️","🎃","🧟‍♂️","🕷","🍭","💀","🤡","👁","🦇","😱","🙀", "👹", "👻", "☠️", "👺", "🧛‍♂️", "🧙‍♀️", "🧝🏿‍♀️",],
           primaryColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1),
           backgroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    ),
    
    
    Theme (themeName: "Animal",
           emojiPack: ["🦆","🐛","🦋","🐝","🐌","🐞","🐬","🐳","🐋","🦈","🐊","🐢", "🐶", "🦊", "🐻", "🐼", "🐨", "🐯", "🦁",],
           primaryColor: #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
           backgroundColor: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    ),
    
    Theme (themeName: "Sport",
           emojiPack: ["🏄‍♀️","🏂","⚽️","🏀","🏈","🎾","🏐","🏉","🎱","🏆","🧘🏼‍♀️","🏋🏻‍♂️", "🐎", "🤾‍♂️", "⛹️‍♀️", "🏓", "🤺", "🥇", "🏄‍♂️",],
           primaryColor: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1),
           backgroundColor: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
    ),
    Theme (themeName: "Fruit",
           emojiPack: ["🍏","🍎","🍐","🍊","🍋","🍌","🍉","🍇","🍓","🍈","🍒","🍑", "🌽", "🍌", "🥥", "🍆", "🥑", "🌶", "🍍",],
           primaryColor: #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1),
           backgroundColor: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    ),
    Theme (themeName: "Flags",
           emojiPack: ["🇺🇸","🇧🇷","🇨🇦","🇨🇺","🇦🇷","🇺🇦","🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇬🇧","🇹🇷","🇺🇾","🇪🇭","🇹🇨", "🇯🇵", "🇮🇱", "🇻🇳", "🇨🇭", "🇻🇪", "🇻🇦", "🏴󠁧󠁢󠁥󠁮󠁧󠁿",],
           primaryColor: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1),
           backgroundColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    ),
    Theme (themeName: "Transport",
           emojiPack: ["🚗","🚕","🚙","🚌","🚎","🏎","🚓","🚑","🚒","🚐","🚚","🚜", "🏍", "🚁", "⛵️", "🚀", "🚲", "🛴", "🛵",],
           primaryColor: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1),
           backgroundColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    ),
    
    Theme (themeName: "Food",
           emojiPack: ["🥞","🥓","🥩","🍗","🍖","🌭","🍔","🍟","🍕","🥪","🥙","🌮", "🍯", "🍣", "🍩", "🍱", "🍤", "🍳", "🌯",],
           primaryColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1),
           backgroundColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    ),]

