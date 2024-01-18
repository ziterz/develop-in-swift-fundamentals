//
//  ViewController.swift
//  TrafficSeques
//
//  Created by Ziady Mubaraq on 18/01/24.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var segueSwitch: UISwitch!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  @IBAction func yellowButtonTapped(_ sender: UIButton) {
    if segueSwitch.isOn {
      performSegue(withIdentifier: "Yellow", sender: nil)
    }
  }
  
  @IBAction func greenButtonTapped(_ sender: UIButton) {
    if segueSwitch.isOn {
      performSegue(withIdentifier: "Green", sender: nil)
    }
  }
}

