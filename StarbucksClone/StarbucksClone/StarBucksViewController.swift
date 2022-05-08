//
//  StarBucksViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class StarBucksViewController: UIViewController {
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    super.init(nibName: nil, bundle: nil)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func commonInit() {
    
  }
  
  func setTabBarImage(imageName: String, title: String) {
    let configuration = UIImage.SymbolConfiguration(scale: .large)
    let image = UIImage(systemName: imageName, withConfiguration: configuration)
    tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
  }
}
