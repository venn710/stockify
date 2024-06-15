//
//  AppDelegate.swift
//  stockify
//
//  Created by Venkatesham Boddula on 15/06/24.
//

import UIKit

@main
class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let uiSceneConfiguration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        uiSceneConfiguration.delegateClass = SceneDelegate.self
        return uiSceneConfiguration
    }
}
