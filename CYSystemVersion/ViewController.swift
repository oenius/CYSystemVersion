//
//  ViewController.swift
//  CYSystemVersion
//
//  Created by YuriJou on 7/7/15.
//  Copyright (c) 2015 YuriJou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var label: UILabel!;

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    label.text = "version is \(CYSystemVersion.majorVersion()) . \(CYSystemVersion.minorVersion()).\(CYSystemVersion.patchVersion())"
    
    let version = NSOperatingSystemVersion(majorVersion: 8, minorVersion: 3, patchVersion: 0)
    let bo = CYSystemVersion().biggerThanSystemVersion()(version)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

