//
//  ViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let configuration = UIImage.SymbolConfiguration(scale: .large)
    let image = UIImage(systemName: "house.fill", withConfiguration: configuration)
    tabBarItem = UITabBarItem(title: "House", image: image, tag: 0)
  }


}

