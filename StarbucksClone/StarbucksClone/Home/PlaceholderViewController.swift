//
//  TileView.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 13.5.22.
//

import UIKit

class PlaceholderViewController: UIViewController {
 
  // MARK: - UI -

  let label = UILabel()
  
  // MARK: - Initializer -

  init(_ text: String) {
    super.init(nibName: nil, bundle: nil)
    label.text = text
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Lifecycle -

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemOrange
    layout()
  }
  
  // MARK: - Helper Methods -
  
  func layout() {
    label.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(label)
    
    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      view.heightAnchor.constraint(equalToConstant: 300)
    ])
  }
  
}
