//
//  Game.swift
//  Apple Pie
//
//  Created by Ziady Mubaraq on 16/01/24.
//

import Foundation

struct Game {
  var word: String
  var incorrectMovesRemaining: Int
  var guessedLetters: [Character]
  var formattedWord: String {
    var guessesWord = ""
    for letter in word {
      if guessedLetters.contains(letter) {
        guessesWord += "\(letter)"
      } else {
        guessesWord += "_"
      }
    }
    
    return guessesWord
  }
  
  mutating func playerGuessed(letter: Character) {
    guessedLetters.append(letter)
    if !word.contains(letter) {
      incorrectMovesRemaining -= 1
    }
  }
}
