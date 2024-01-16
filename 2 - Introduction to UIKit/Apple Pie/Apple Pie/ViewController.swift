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
  var totalWins = 0
  var totalLosses = 0
  var currentGame: Game!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    newRound()
  }
  
  func newRound() {
    let newWord = listOfWords.removeFirst()
    currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
    updateUI()
  }
  
  func updateUI() {
    var letters = [String]()
    for letter in currentGame.formattedWord {
      letters.append(String(letter))
    }
    correctWordLabel.text = letters.joined(separator: ", ")
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
    treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
  }

  @IBAction func letterButtonPressed(_ sender: UIButton) {
    sender.isEnabled = false
    let letterString = sender.configuration!.title!
    let letter = Character(letterString.lowercased())
    currentGame.platerGuessed(letter: letter)
    updateUI()
  }
  
}

