//
//  ViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class HomeViewController: StarBucksViewController {
  
  let homeHeaderView = HomeHeaderView()
  var headerViewTopConstraint: NSLayoutConstraint?
  
  let tiles = [
    "Star balance",
    "Bonus star",
    "Try these",
    "Welcome back",
    "Uplifting"
  ]

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
    homeHeaderView.backgroundColor = .systemGray4
  }
  
  func layout() {
    view.addSubview(homeHeaderView)
    
    headerViewTopConstraint = homeHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
    
    NSLayoutConstraint.activate([
      headerViewTopConstraint!,
      homeHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      homeHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
  }
  
}

//func scrollViewDidScroll(_ scrollView: UIScrollView) {
//  let y = scrollView.contentOffset.y
//  
//  let swipingDown = y <= 0
//  let shouldSnap = y > 30
//  let labelHeight = homeHeaderView.greetingLabel.frame.height + 16
//  
//  UIView.animate(withDuration: 0.3) {
//    self.homeHeaderView.greetingLabel.alpha = swipingDown ? 1.0 : 0.0
//  }
//  
//  UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.3, delay: 0, options: []) {
//    self.headerViewTopConstraint?.constant = shouldSnap ? -labelHeight : 0
//    self.view.layoutIfNeeded()
//  }
//  
//}

