//
//  ViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

class HomeViewController: StarBucksViewController {
  
  let homeHeaderView = HomeHeaderView()
  let scrollView = UIScrollView()
  let stackView = UIStackView()
  
  var headerViewTopConstraint: NSLayoutConstraint?
  
  let tiles = [
    TileViewController(imageName: "meatless", title: "Breakfast made meatless", subtitle: "Try the Beyond Meat, Chedar & Egg Breakfast Sandwitch. Vegetarian and protein-packed."),
    TileViewController(imageName: "communities", title: "Uplifting our communities", subtitle: "Thanks to our partners' nominations, The Starbucks Foundation is donating $145K to more than 50 local charities."),
    TileViewController(imageName: "bonus", title: "Spend at least $15 for 50 Bonus Stars", subtitle: "Collect 50 Bonus Stars when you spend at least $15 pre-tax.")
  ]

  override func viewDidLoad() {
    view.backgroundColor = .systemBackground
    setupScrollView()
    style()
    layout()
  }
  
  override func commonInit() {
    setTabBarImage(imageName: "house.fill", title: "Home")
  }
  
  func setupScrollView() {
    scrollView.delegate = self
  }

}

extension HomeViewController {
  
  func style() {
    homeHeaderView.translatesAutoresizingMaskIntoConstraints = false
    
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    stackView.axis = .vertical
    stackView.spacing = 8
  }
  
  func layout() {
    view.addSubview(homeHeaderView)
    view.addSubview(scrollView)
    scrollView.addSubview(stackView)
    
    for tile in tiles {
      addChild(tile)
      stackView.addArrangedSubview(tile.view)
      tile.didMove(toParent: self)
    }
    
    headerViewTopConstraint = homeHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
    
    NSLayoutConstraint.activate([
      headerViewTopConstraint!,
      homeHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      homeHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      
      scrollView.topAnchor.constraint(equalTo: homeHeaderView.bottomAnchor, constant: 8),
      scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
      scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
      scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      
      stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
      stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
      stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
      stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
      
      stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
    ])
  }
  
}

// MARK: - UIScrollViewDelegate -

extension HomeViewController: UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    let y = scrollView.contentOffset.y
  
    let swipingDown = y <= 0
    let shouldSnap = y > 30
    let labelHeight = homeHeaderView.greetingLabel.frame.height + 16
  
    UIView.animate(withDuration: 0.3) {
      self.homeHeaderView.greetingLabel.alpha = swipingDown ? 1.0 : 0.0
    }
  
    UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 0.3, delay: 0, options: []) {
      self.headerViewTopConstraint?.constant = shouldSnap ? -labelHeight : 0
      self.view.layoutIfNeeded()
    }
  
  }
}



