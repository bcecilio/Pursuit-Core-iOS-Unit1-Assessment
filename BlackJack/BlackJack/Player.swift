//
//  Player.swift
//  BlackJack
//
//  Created by Brendon Cecilio on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct Player {
    var score: Int = Int.random(in: 2...11)
    var cards: [Card]
    var playerName: String 
}
