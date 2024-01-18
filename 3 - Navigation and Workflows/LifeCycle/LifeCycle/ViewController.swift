//
//  ViewController.swift
//  LifeCycle
//
//  Created by Ziady Mubaraq on 18/01/24.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    print("View Controller - View Did Load")
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    print("View Controller - View Will Appear")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    print("View Controller - View Did Appear")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    print("View Controller - View Will Disappear")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    
    print("View Controller - View Did Disappear")
  }
}

