//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Emrah Karabulut on 29.05.2022.
//

import Foundation

import Foundation
 
struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int
 
  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
