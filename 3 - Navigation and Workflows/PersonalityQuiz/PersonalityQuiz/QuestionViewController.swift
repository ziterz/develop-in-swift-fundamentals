//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Ziady Mubaraq on 18/01/24.
//

import UIKit

class QuestionViewController: UIViewController {
  
  var questions: [Question] = [
    Question(
      text: "Which food do you like the most?",
      type: .single,
      answers: [
        Answer(text: "Steak", type: .dog),
        Answer(text: "Fish", type: .cat),
        Answer(text: "Carrots", type: .rabbit),
        Answer(text: "Corn", type: .turtle)
      ]
    ),
    Question(
      text: "Which activities do you enjoy?",
      type: .multiple,
      answers: [
        Answer(text: "Swimming", type: .turtle),
        Answer(text: "Sleeping", type: .cat),
        Answer(text: "Cuddling", type: .rabbit),
        Answer(text: "Eating", type: .dog),
      ]
    ),
    Question(
      text: "How much do you enjoy car rides?",
      type: .ranged,
      answers: [
        Answer(text: "I dislike them", type: .cat),
        Answer(text: "I get a litle nervous", type: .rabbit),
        Answer(text: "I barely notice them", type: .turtle),
        Answer(text: "I love them", type: .dog),
      ]
    )
  ]
  var questionIndex: Int = 0
  var answerChosen: [Answer] = []
  
  @IBOutlet var questionLabel: UILabel!
  
  @IBOutlet var singleStackView: UIStackView!
  @IBOutlet var singleButton1: UIButton!
  @IBOutlet var singleButton2: UIButton!
  @IBOutlet var singleButton3: UIButton!
  @IBOutlet var singleButton4: UIButton!
  
  @IBOutlet var multipleStackView: UIStackView!
  @IBOutlet var multipleLabel1: UILabel!
  @IBOutlet var multipleLabel2: UILabel!
  @IBOutlet var multipleLabel3: UILabel!
  @IBOutlet var multipleLabel4: UILabel!
  
  @IBOutlet var multiSwitch1: UISwitch!
  @IBOutlet var multiSwitch2: UISwitch!
  @IBOutlet var multiSwitch3: UISwitch!
  @IBOutlet var multiSwitch4: UISwitch!
  
  @IBOutlet var rangedStackView: UIStackView!
  @IBOutlet var rangedLabel1: UILabel!
  @IBOutlet var rangedLabel2: UILabel!
  @IBOutlet var rangedSlider: UISlider!
  
  @IBOutlet var questionProgressView: UIProgressView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateUI()
  }
  
  @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
    let currentAnswers = questions[questionIndex].answers
    
    switch sender {
    case singleButton1:
      answerChosen.append(currentAnswers[0])
    case singleButton2:
      answerChosen.append(currentAnswers[1])
    case singleButton3:
      answerChosen.append(currentAnswers[2])
    case singleButton4:
      answerChosen.append(currentAnswers[3])
    default:
      break
    }
    
    nextQuestion()
  }
  
  @IBAction func multipleAnswerButtonPressed() {
    let currentAnswers = questions[questionIndex].answers
    
    if multiSwitch1.isOn {
      answerChosen.append(currentAnswers[0])
    }
    
    if multiSwitch2.isOn {
      answerChosen.append(currentAnswers[1])
    }
    
    if multiSwitch3.isOn {
      answerChosen.append(currentAnswers[2])
    }
    
    if multiSwitch4.isOn {
      answerChosen.append(currentAnswers[3])
    }
    
    nextQuestion()
  }
  
  @IBAction func rangedAnswerButtonPressed() {
    let currentAnswers = questions[questionIndex].answers
    
    let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
    
    answerChosen.append(currentAnswers[index])
    
    nextQuestion()
  }
  
  func updateUI() {
    singleStackView.isHidden = true
    multipleStackView.isHidden = true
    rangedStackView.isHidden = true
    
    let currentQuestion = questions[questionIndex]
    let currentAnswers = currentQuestion.answers
    let totalProgress = Float(questionIndex) / Float(questions.count)
    
    navigationItem.title = "Question #\(questionIndex + 1)"
    questionLabel.text = currentQuestion.text
    questionProgressView.setProgress(totalProgress, animated: true)
    
    switch currentQuestion.type {
    case .single:
      updateSingleStack(using: currentAnswers)
    case .multiple:
      updateMultipleStack(using: currentAnswers)
    case .ranged:
      updateRangedStack(using: currentAnswers)
    }
  }
  
  func nextQuestion() {
    questionIndex += 1
    
    if questionIndex < questions.count {
      updateUI()
    } else {
      performSegue(withIdentifier: "Results", sender: nil)
    }
  }
  
  @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
    return ResultsViewController(coder: coder, responses: answerChosen)
  }
  
  func updateSingleStack(using answers: [Answer]) {
    singleStackView.isHidden = false
    singleButton1.setTitle(answers[0].text, for: .normal)
    singleButton2.setTitle(answers[1].text, for: .normal)
    singleButton3.setTitle(answers[2].text, for: .normal)
    singleButton4.setTitle(answers[3].text, for: .normal)
  }
  
  func updateMultipleStack(using answers: [Answer]) {
    multipleStackView.isHidden = false
    multiSwitch1.isOn = false
    multiSwitch2.isOn = false
    multiSwitch3.isOn = false
    multiSwitch4.isOn = false
    multipleLabel1.text = answers[0].text
    multipleLabel2.text = answers[1].text
    multipleLabel3.text = answers[2].text
    multipleLabel4.text = answers[3].text
  }
  
  func updateRangedStack(using answers: [Answer]) {
    rangedStackView.isHidden = false
    rangedSlider.setValue(0.5, animated: false)
    rangedLabel1.text = answers.first?.text
    rangedLabel2.text = answers.last?.text
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
