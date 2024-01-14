//
//  ViewController.swift
//  Light
//
//  Created by Ziady Mubaraq on 13/01/24.
//

import UIKit

class ViewController: UIViewController {

  var lightOn = true
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }

  fileprivate func updateUI() {
    view.backgroundColor = lightOn ? .white : .black
  }
  
  @IBAction func buttonPressed(_ sender: Any) {
    lightOn.toggle()
    updateUI()
  }
  
}

