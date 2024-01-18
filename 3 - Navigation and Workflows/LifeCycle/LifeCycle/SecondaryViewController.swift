//
//  SecondaryViewController.swift
//  LifeCycle
//
//  Created by Ziady Mubaraq on 18/01/24.
//

import UIKit

class SecondaryViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    print("Secondary Controller - View Did Load")
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    print("Secondary Controller - View Will Appear")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    print("Secondary Controller - View Did Appear")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    print("Secondary Controller - View Will Disappear")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    
    print("Secondary Controller - View Did Disappear")
  }

}
