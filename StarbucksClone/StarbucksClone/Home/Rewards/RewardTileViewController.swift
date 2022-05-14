//
//  RewardTileViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 14.5.22.
//

import UIKit

class RewardTileViewController: UIViewController {
  
  let rewardTileView = RewardTileView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    layout()
  }
  
  private func layout() {
    rewardTileView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(rewardTileView)
    
    NSLayoutConstraint.activate([
      rewardTileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      rewardTileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      rewardTileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      rewardTileView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
    ])
  }
}
