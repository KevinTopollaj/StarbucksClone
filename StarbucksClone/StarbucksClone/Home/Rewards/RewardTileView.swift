//
//  RewardTileView.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 14.5.22.
//

import UIKit

class RewardTileView: UIView {
  
  let balanceView = BalanceView()
  
  override init(frame: CGRect) {
    super.init(frame: .zero)
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 100, height: 300)
  }
  
}

extension RewardTileView {
  
  func style() {
    balanceView.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    addSubview(balanceView)
    
    NSLayoutConstraint.activate([
      balanceView.topAnchor.constraint(equalTo: topAnchor),
      balanceView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2)
    ])
  }
}
