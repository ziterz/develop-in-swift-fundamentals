//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Ziady Mubaraq on 18/01/24.
//

import UIKit

class RedViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    tabBarItem.badgeValue = "!"
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    tabBarItem.badgeValue = nil
  }

}

