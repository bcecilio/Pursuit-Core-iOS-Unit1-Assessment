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
    
    func getCard() -> Card?{
        // shuffle the card array
        deck.shuffle()
        // popLast removes a card from the array and returns
        return deck.popLast()
    }
    
    func hitMe(userHit: String, score: Int) -> Int{
        if userHit == userHitMe {
            player.score += Card.newDeck(aceValue: 1)
        }
        return player.score
    }
    
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
    
    func computorVsPlayer(compRandomInt: Int, userScore: Int) {
        if randomCompScore > userScore {
            print("You lose")
        } else if userScore > randomCompScore {
            print("You win")
        }
    }
    
    func gameStatus(playerScore: Int, currentScore: Int) {
        if player.score == 21 {
            print("You win with BlackJack!")
        } else if randomCompScore == 21 {
            print("Computor wins with BlackJack")
        } else if player.score > 21 {
            print("Bust 🤭")
        }
    }
}
