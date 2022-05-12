//
//  HomeHeaderView.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 12.5.22.
//

import UIKit

class HomeHeaderView: UIView {
  
  let greetingLabel = UILabel()
  let inboxButton = UIButton()
  
  override init(frame: CGRect) {
    super.init(frame: .zero)
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension HomeHeaderView {
  
  func style() {
    greetingLabel.translatesAutoresizingMaskIntoConstraints = false
    greetingLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
    greetingLabel.text = "Good afternoon, Kevin ☀️"
    greetingLabel.numberOfLines = 0
    greetingLabel.lineBreakMode = .byWordWrapping
    
    inboxButton.translatesAutoresizingMaskIntoConstraints = false
    inboxButton.setTitleColor(.label, for: .normal)
    inboxButton.setTitle("Inbox", for: .normal)
    
  }
  
  func layout() {
    addSubview(greetingLabel)
    addSubview(inboxButton)
    
    NSLayoutConstraint.activate([
      greetingLabel.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
      greetingLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
      trailingAnchor.constraint(equalToSystemSpacingAfter: greetingLabel.trailingAnchor, multiplier: 1),
      
      inboxButton.topAnchor.constraint(equalToSystemSpacingBelow: greetingLabel.bottomAnchor, multiplier: 2),
      inboxButton.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
      bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1)
    ])
  }
  
}
