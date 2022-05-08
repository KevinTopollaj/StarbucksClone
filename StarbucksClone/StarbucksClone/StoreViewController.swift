//
//  StoreViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class StoreViewController: StarBucksViewController {
  
  override func viewDidLoad() {
    view.backgroundColor = .systemTeal
    title = "Stores"
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "location.fill", title: "Stores")
  }
}
