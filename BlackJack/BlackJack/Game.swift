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
    var player = Player.init(score: 0, cards: [Card](), playerName: "Brendon")
    var hitPlayer = Bool()
    var userHitMe = "hit"
    var userHitPass = "pass"
    
    // computed properties
    var hasMoreCards: Bool {
        return !deck.isEmpty
    }
    var randomCompScore: Int {
        let randomInt = Int.random(in: 2...11)
        return randomInt
    }
    
    //METHODS
    
//    func newGame(score: Player) {
//        var userScore = 0
//        var compScore = 0
//    }
    
    func stopHits(userPass: String, userScore: Int) {
//        print("Do you want to hit or pass?")
            if userPass == userHitPass {
                if userScore > randomCompScore {
                    print("You win!")
                } else if userScore < randomCompScore{
                    print("You lose!")
                }
            }
        }
    
    func hitMe(userHit: String, score: Int) -> Int{
        if userHit == userHitMe {
            player.score += 10
        }
        return player.score
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
