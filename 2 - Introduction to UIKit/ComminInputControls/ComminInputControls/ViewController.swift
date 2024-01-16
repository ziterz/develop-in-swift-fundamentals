//
//  ViewController.swift
//  ComminInputControls
//
//  Created by Ziady Mubaraq on 16/01/24.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var toggle: UISwitch!
  @IBOutlet var slider: UISlider!
  @IBOutlet var button: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
  }
  
  @objc func buttonTapped() {
    print("Button was tapped!")
    
    if toggle.isOn {
      print("The switch is on!")
    } else {
      print("The switch is off.")
    }
    
    print("The slider is set to \(slider.value)")
  }

  
  @IBAction func switchToggled(_ sender: UISwitch) {
    if sender.isOn {
      print("The switch is on!")
    } else {
      print("The switch is off.")
    }
  }
  
  @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
    let location = sender.location(in: view)
    print(location)
  }
  
  @IBAction func sliderValueChanged(_ sender: UISlider) {
    print(sender.value)
  }
  
  @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
    if let text = sender.text {
      print(text)
    }
  }
  
  @IBAction func textChanged(_ sender: UITextField) {
    if let text = sender.text {
      print(text)
    }
  }
}

