//
//  ViewController.swift
//  CYSystemVersion
//
//  Created by YuriJou on 7/7/15.
//  Copyright (c) 2015 YuriJou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let alert = UIAlertView(title: "System Version",
      message:"version is \(CYSystemVersion.majorVersion()).\(CYSystemVersion.minorVersion()).\(CYSystemVersion.patchVersion())",
      delegate:nil,
      cancelButtonTitle:"OK",
      otherButtonTitles: "OK")
    
    alert.show()
    
  }

}

