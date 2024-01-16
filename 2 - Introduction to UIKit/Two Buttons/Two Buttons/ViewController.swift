//
//  ViewController.swift
//  Two Buttons
//
//  Created by Ziady Mubaraq on 16/01/24.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var label: UILabel!
  @IBOutlet var textField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func setTextButtonTapped(_ sender: UIButton) {
    label.text = textField.text
  }
  
  @IBAction func clearTextButtonTapped(_ sender: UIButton) {
    label.text = ""
    textField.text = "Placeholder"
  }
  
}

