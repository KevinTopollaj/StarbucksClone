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
    setupNavBar()
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "house.fill", title: "Home")
  }

  func setupNavBar() {
    navigationController?.navigationBar.topItem?.title = "Good afternoon, Kevin ☀"
  }

}

