//
//  ViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class HomeViewController: StarBucksViewController {

  override func viewDidLoad() {
    view.backgroundColor = .systemBackground
    title = "Home"
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "house.fill", title: "Home")
  }


}

