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
    
    let homeNC = makeNavigationController(rootViewController: homeVC)
    let scanNC = makeNavController(root: scanVC)
    let orderNC = makeNavController(root: orderVC)
    let giftNC = makeNavController(root: giftVC)
    let storeNC = makeNavController(root: storeVC)
    
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
  
  func makeNavigationController(rootViewController: UIViewController) -> UINavigationController {
    let navigationController = UINavigationController(rootViewController: rootViewController)
    navigationController.navigationBar.prefersLargeTitles = true
    
    let attributes = [
      NSAttributedString.Key.foregroundColor: UIColor.label,
      NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .title1).bold()
    ]
    
    navigationController.navigationBar.largeTitleTextAttributes = attributes
    
    return navigationController
  }
  
  func makeNavController(root: UIViewController) -> UINavigationController {
    let navController = UINavigationController(rootViewController: root)
    
    let navAppearance = UINavigationBarAppearance()
    navAppearance.configureWithOpaqueBackground()
    navAppearance.backgroundColor = .systemBackground
    
    navController.navigationBar.standardAppearance = navAppearance
    navController.navigationBar.scrollEdgeAppearance = navController.navigationBar.standardAppearance
    
    return navController
  }

}

