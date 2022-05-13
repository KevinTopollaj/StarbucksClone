//
//  TileViewController.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 13.5.22.
//

import UIKit

class TileViewController: UIViewController {
  
  // MARK: - UI -
  
  let tileView = TileView()
  
  // MARK: - Initializer -
  
  init(imageName: String, title: String, subtitle: String) {
    super.init(nibName: nil, bundle: nil)
    tileView.imageView.image = UIImage(named: imageName)
    tileView.titleLabel.text = title
    tileView.subtitleLabel.text = subtitle
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Lifecycle -
  
  override func viewDidLoad() {
    super.viewDidLoad()
    style()
    layout()
  }
  
  // MARK: - Helper Methods -
  func style() {
    tileView.translatesAutoresizingMaskIntoConstraints = false
  }
  
  func layout() {
    view.addSubview(tileView)
    
    NSLayoutConstraint.activate([
      tileView.topAnchor.constraint(equalTo: view.topAnchor),
      tileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      tileView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
  }
}
