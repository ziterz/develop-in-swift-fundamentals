//
//  Answer.swift
//  PersonalityQuiz
//
//  Created by Ziady Mubaraq on 19/01/24.
//

import Foundation

struct Answer {
  var text: String
  var type: AnimalType
}

enum AnimalType: Character {
  case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
  
  var definition: String {
    switch self {
    case .dog:
      return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
    case .cat:
      return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
    case .rabbit:
      return "You love everything that's soft. You are healthy and full energy."
    case .turtle:
      return "Your are wise beyond your eyes, and you focus on the details. Slow and steady wins the race."
    }
  }
}
