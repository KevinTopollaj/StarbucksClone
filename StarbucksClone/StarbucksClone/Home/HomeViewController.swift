//
//  ViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class HomeViewController: StarBucksViewController {
  
  let homeHeaderView = HomeHeaderView()

  override func viewDidLoad() {
    view.backgroundColor = .systemBackground    
    style()
    layout()
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "house.fill", title: "Home")
  }

}

extension HomeViewController {
  
  func style() {
    homeHeaderView.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    view.addSubview(homeHeaderView)
    
    NSLayoutConstraint.activate([
      homeHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      homeHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      homeHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    ])
  }
  
}

