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
    
    makeInboxButton()
    
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
      bottomAnchor.constraint(equalToSystemSpacingBelow: inboxButton.bottomAnchor, multiplier: 1),
      inboxButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25)
    ])
  }
  
}

// MARK: - Factories

extension HomeHeaderView {
  
  func makeInboxButton() {
    inboxButton.translatesAutoresizingMaskIntoConstraints = false
    let configuration = UIImage.SymbolConfiguration(scale: .large)
    let image = UIImage(systemName: "envelope", withConfiguration: configuration)
    
    inboxButton.setImage(image, for: .normal)
    inboxButton.imageView?.tintColor = .secondaryLabel
    inboxButton.imageView?.contentMode = .scaleAspectFit
    
    inboxButton.setTitle("Inbox", for: .normal)
    inboxButton.setTitleColor(.secondaryLabel, for: .normal)
    
    inboxButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 16)
  }
  
}
