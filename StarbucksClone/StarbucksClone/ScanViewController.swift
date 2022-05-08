//
//  ScanViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class ScanViewController: StarBucksViewController {
  
  override func viewDidLoad() {
    view.backgroundColor = .systemIndigo
    title = "Scan"
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "qrcode", title: "Scan")
  }
}
