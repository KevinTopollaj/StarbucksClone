//
//  AppDelegate.swift
//  StarbucksClone
//
//  Created by Kevin Topollaj on 8.5.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.makeKeyAndVisible()
    window?.backgroundColor = .systemBackground
    
    let homeVC = HomeViewController()
    let scanVC = ScanViewController()
    let orderVC = OrderViewController()
    let giftVC = GiftViewController()
    let storeVC = StoreViewController()
    
    let homeNC = makeNavigationController(rootViewController: homeVC, withLargeTitle: true)
    let scanNC = makeNavigationController(rootViewController: scanVC)
    let orderNC = makeNavigationController(rootViewController: orderVC)
    let giftNC = makeNavigationController(rootViewController: giftVC)
    let storeNC = makeNavigationController(rootViewController: storeVC)
    
    let tabBarController = UITabBarController()
    tabBarController.viewControllers = [homeNC, scanNC, orderNC, giftNC, storeNC]
    
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = .systemBackground
    tabBarController.tabBar.standardAppearance = appearance
    tabBarController.tabBar.scrollEdgeAppearance = tabBarController.tabBar.standardAppearance
    
    
    window?.rootViewController = tabBarController
    
    return true
    
  }
  
  func makeNavigationController(rootViewController: UIViewController, withLargeTitle: Bool = false) -> UINavigationController {
    let navigationController = UINavigationController(rootViewController: rootViewController)
    navigationController.navigationBar.prefersLargeTitles = withLargeTitle
    
//    let navAppearance = UINavigationBarAppearance()
//    navAppearance.configureWithOpaqueBackground()
//    navAppearance.backgroundColor = .systemBackground
//    
//    navigationController.navigationBar.standardAppearance = navAppearance
//    navigationController.navigationBar.scrollEdgeAppearance = navigationController.navigationBar.standardAppearance
    
    let attributes = [
      NSAttributedString.Key.foregroundColor: UIColor.label,
      NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .title1).bold()
    ]
    
    navigationController.navigationBar.largeTitleTextAttributes = attributes
    
    return navigationController
  }

}

