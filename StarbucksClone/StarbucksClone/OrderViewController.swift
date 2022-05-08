//
//  OrderViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class OrderViewController: StarBucksViewController {
  
  override func viewDidLoad() {
    view.backgroundColor = .systemOrange
    title = "Order"
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "arrow.up.bin.fill", title: "Order")
  }
}
