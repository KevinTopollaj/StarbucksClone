//
//  GiftViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class GiftViewController: StarBucksViewController {
  
  override func viewDidLoad() {
    view.backgroundColor = .systemGreen
    title = "Gift"
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "gift.fill", title: "Gift")
  }
}
