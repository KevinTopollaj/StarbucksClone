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
    
    let tabBarController = UITabBarController()
    tabBarController.viewControllers = [homeVC, scanVC, orderVC, giftVC, storeVC]
    
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = .systemBackground
    tabBarController.tabBar.standardAppearance = appearance
    tabBarController.tabBar.scrollEdgeAppearance = tabBarController.tabBar.standardAppearance
    
    
    window?.rootViewController = tabBarController
    
    return true
    
  }

}

