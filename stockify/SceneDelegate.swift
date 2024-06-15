//
//  SceneDelegate.swift
//  stockify
//
//  Created by Venkatesham Boddula on 15/06/24.
//

import UIKit

class SceneDelegate: NSObject, UISceneDelegate {
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
    }
}
