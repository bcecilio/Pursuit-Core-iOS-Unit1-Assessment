//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// TODO: remove these lines after you have added the Suit and FaceCard enums as per the assessment README
print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")
// There are 52 in a deck of cards

let game = Game()

let userPrompt = "Lets Play Some Black Jack"

let gameOver = false

repeat {
    print()
    print(userPrompt)
    print()
    repeat {
        print("Do you want to hit or pass?(hit or pass)")
        var userResponse = readLine() ?? ""
        print(game.player)
        
    } while (game.hasMoreCards)
    
} while gameOver
