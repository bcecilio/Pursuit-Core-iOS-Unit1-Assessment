//
//  Game.swift
//  BlackJack
//
//  Created by Brendon Cecilio on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    
    var deck = [Card]()
    var player = Player.self
    var hitPlayer = Bool()
    var userHitMe = "hit me"
    var userHitPass = "pass"
    var userScore = 0
    var compScore = 0
    
    // computed properties
    var hasMoreCards: Bool {
        return !deck.isEmpty
    }
    var randomCompScore: Int {
        let randomInt = 0
        return randomInt
    }
    
    //METHODS
    
    func newGame(score: Player) {
        userScore = 0
        compScore = 0
    }

    
    func stopHits(userPass: String, userScore: Int) {
//        print("Do you want to hit or pass?")
            if userPass == userHitPass {
                if userScore > randomCompScore {
                    print("You win!")
                }
            }
        }
    
    func hitMe(userHit: String, score: Int) -> Int{
        if userHit == userHitMe {
            userScore += Card.newDeck(aceValue: <#T##Int#>)
        }
        return userScore
    }
    
    func computorVsPlayer(compRandomInt: Int, userScore: Int) {
        if randomCompScore > userScore {
            print("You lose")
        } else if userScore > randomCompScore {
            print("You win")
        }
    }
    
//    func gameStatus(playerScore: Int, currentScore: Int) {
//        if score
//    }
}
