//
//  Factories.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 9.5.22.
//

import UIKit

extension UIFont {
  func withTraits(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
    let descriptor = fontDescriptor.withSymbolicTraits(traits)
    return UIFont(descriptor: descriptor!, size: 0)
  }
  
  func bold() -> UIFont {
    withTraits(traits: .traitBold)
  }
}
