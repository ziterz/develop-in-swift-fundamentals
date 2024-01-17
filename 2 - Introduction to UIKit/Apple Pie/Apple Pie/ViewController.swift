//
//  ViewController.swift
//  Apple Pie
//
//  Created by Ziady Mubaraq on 16/01/24.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var treeImageView: UIImageView!
  @IBOutlet var scoreLabel: UILabel!
  @IBOutlet var correctWordLabel: UILabel!
  @IBOutlet var letterButtons: [UIButton]!
  var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
  let incorrectMovesAllowed = 7
  var totalWins = 0 {
    didSet {
      newRound()
    }
  }
  var totalLosses = 0 {
    didSet {
      newRound()
    }
  }
  var currentGame: Game!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    newRound()
  }
  
  func newRound() {
    if !listOfWords.isEmpty {
      let newWord = listOfWords.removeFirst()
      currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
      updateUI()
      enableLetterButtons(true)
      updateUI()
    } else {
      enableLetterButtons(false)
    }
  }
  
  func enableLetterButtons(_ enable: Bool) {
    for button in letterButtons {
      button.isEnabled = enable
    }
  }
  
  func updateUI() {
    var letters = [String](currentGame.formattedWord.map { String($0) })
    correctWordLabel.text = letters.joined(separator: ", ")
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
    treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
  }
  
  @IBAction func letterButtonPressed(_ sender: UIButton) {
    sender.isEnabled = false
    let letterString = sender.configuration!.title!
    let letter = Character(letterString.lowercased())
    currentGame.playerGuessed(letter: letter)
    updateGameState()
  }
  
  func updateGameState() {
    if currentGame.incorrectMovesRemaining == 0 {
      totalLosses += 1
    } else if currentGame.word == currentGame.formattedWord {
      totalWins += 1
    } else {
      updateUI()
    }
  }
  
}

