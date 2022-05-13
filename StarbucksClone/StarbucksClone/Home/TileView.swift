//
//  TileView.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 13.5.22.
//

import UIKit

class TileView: UIView {
  
  // MARK: - UI -
  let imageView = UIImageView()
  let titleLabel = UILabel()
  let subtitleLabel = UILabel()
  let ctaButton = makeGreenButton(withText: "Order")
  
  // MARK: - Initializer -
  override init(frame: CGRect) {
    super.init(frame: .zero)
    style()
    layout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Shadow -
  private var shadowLayer: CAShapeLayer!
  private var cornerRadius: CGFloat = 6
  private var fillColor: UIColor = .white
  
  override func layoutSubviews() {
    super.layoutSubviews()
    addShadow()
  }
  
  func addShadow() {
    shadowLayer = CAShapeLayer()
    
    shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
    shadowLayer.fillColor = fillColor.cgColor
    
    shadowLayer.shadowColor = UIColor.black.cgColor
    shadowLayer.shadowPath = shadowLayer.path
    shadowLayer.shadowOffset = CGSize(width: 0.0, height: 1.0)
    shadowLayer.shadowOpacity = 0.2
    shadowLayer.shadowRadius = 1
    
    layer.insertSublayer(shadowLayer, at: 0)
    
  }
  
}

// MARK: - Style and Layout -
extension TileView {
  
  func style() {
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit
    imageView.clipsToBounds = true
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.font = UIFont.preferredFont(forTextStyle: .title3).bold()
    titleLabel.textColor = .label
    
    subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
    subtitleLabel.font = UIFont.preferredFont(forTextStyle: .footnote)
    subtitleLabel.numberOfLines = 0
    subtitleLabel.lineBreakMode = .byWordWrapping
    
    ctaButton.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    addSubview(imageView)
    addSubview(titleLabel)
    addSubview(subtitleLabel)
    addSubview(ctaButton)
    
    NSLayoutConstraint.activate([
      imageView.topAnchor.constraint(equalTo: topAnchor),
      imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
      imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
      
      titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: imageView.bottomAnchor, multiplier: 2),
      titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
      trailingAnchor.constraint(equalToSystemSpacingAfter: titleLabel.trailingAnchor, multiplier: 2),
      
      subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 2),
      subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
      subtitleLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
      
      ctaButton.topAnchor.constraint(equalToSystemSpacingBelow: subtitleLabel.bottomAnchor, multiplier: 2),
      ctaButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
      bottomAnchor.constraint(equalToSystemSpacingBelow: ctaButton.bottomAnchor, multiplier: 2),
    ])
  }
  
  override var intrinsicContentSize: CGSize {
    return CGSize(width: 100, height: 300)
  }
}
