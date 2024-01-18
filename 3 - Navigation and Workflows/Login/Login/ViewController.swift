//
//  ViewController.swift
//  Login
//
//  Created by Ziady Mubaraq on 18/01/24.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var forgotUsernameButton: UIButton!
  @IBOutlet var forgotPasswordButton: UIButton!
  @IBOutlet var usernameTextField: UITextField!
  @IBOutlet var passwordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func loginButtonTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "LandingView", sender: nil)
  }
  
  @IBAction func forgotUsernameButtonTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "LandingView", sender: forgotUsernameButton)
  }
  
  @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "LandingView", sender: forgotPasswordButton)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let sender = sender as? UIButton else { return }
    
    if sender == forgotUsernameButton {
      segue.destination.navigationItem.title = "Forgot Username"
    } else if sender == forgotPasswordButton {
      segue.destination.navigationItem.title = "Forgot Password"
    } else {
      segue.destination.navigationItem.title = usernameTextField.text
    }
  }
}

