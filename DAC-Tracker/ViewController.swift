//
//  ViewController.swift
//  DAC-Tracker
//
//  Created by Arash K. on 2017-10-19.
//  Copyright © 2017 Arash K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    ParadisoService.assets { (res) in
      let rr = res
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

