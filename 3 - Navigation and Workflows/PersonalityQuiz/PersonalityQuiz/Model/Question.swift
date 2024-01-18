//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Ziady Mubaraq on 19/01/24.
//

import Foundation

struct Question {
  var text: String
  var type: ResponseType
  var answers: [Answer]
}


enum ResponseType {
  case single, multiple, ranged
}
