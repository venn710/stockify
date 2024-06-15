//
//  TabBarController.swift
//  stockify
//
//  Created by Venkatesham Boddula on 15/06/24.
//

import UIKit
import SwiftUI

class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        configureTabBar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureTabBar() {
        UITabBar.appearance().tintColor = .systemTeal
        UITabBar.appearance().isTranslucent = true
        viewControllers = [configureHomeTab(), configureMarketsTab()]
    }
    
    private func configureHomeTab() -> UINavigationController {
        let homeScreenVC = UIHostingController(rootView: HomeScreen())
        homeScreenVC.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: ImageConstants.ic_home),
            tag: 0)
        homeScreenVC.title = "Home"
        homeScreenVC.view.backgroundColor = .white
        return UINavigationController(rootViewController: homeScreenVC)
    }
    
    private func configureMarketsTab() -> UINavigationController {
        let marketsScreenVC = UIHostingController(rootView: MarketsScreen())
        marketsScreenVC.tabBarItem = UITabBarItem(
            title: "Markets",
            image: UIImage(systemName: ImageConstants.ic_markets),
            tag: 1)
        marketsScreenVC.title = "Markets"
        marketsScreenVC.view.backgroundColor = .white
        return UINavigationController(rootViewController: marketsScreenVC)
    }
}
