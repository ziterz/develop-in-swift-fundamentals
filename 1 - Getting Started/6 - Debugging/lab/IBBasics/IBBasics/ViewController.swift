//
//  ViewController.swift
//  IBBasics
//
//  Created by Ziady Mubaraq on 13/01/24.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var myButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myButton.tintColor = .red
  }

  @IBAction func buttonPresed(_ sender: Any) {
    print("The button was pressed")
  }
  
}

