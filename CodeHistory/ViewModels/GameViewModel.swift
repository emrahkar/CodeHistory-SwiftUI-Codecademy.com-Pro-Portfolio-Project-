//
//  GameViewModel.swift
//  CodeHistory
//
//  Created by Emrah Karabulut on 26.05.2022.
//

import Foundation
import SwiftUI

//1
class GameViewModel: ObservableObject {
    
    //2 MARK: -  Published properties
    @Published private var game = Game()
    
    //3 MARK:  - Internal properties
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    //4
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
           if let _ = game.guesses[currentQuestion] {
               return true
           } else {
               return false
           }
       }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    func makeGuess(atIndex index: Int) {
           game.makeGuessForCurrentQuestion(atIndex: index)
       }
    
    func displayNextScreen() {
           game.updateGameStatus()
       }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
             if let guessedIndex = game.guesses[currentQuestion] {
                 if guessedIndex != optionIndex {
                     return GameColor.main
                 } else if guessedIndex == currentQuestion.correctAnswerIndex {
                     return GameColor.correctGuess
                 } else {
                     return GameColor.incorrectGuess
                 }
             } else {
                 return GameColor.main
             }
         }
    
    var correctGuesses: Int {
       game.guessCount.correct
     }
    
     var incorrectGuesses: Int {
       game.guessCount.incorrect
     }
    
}
