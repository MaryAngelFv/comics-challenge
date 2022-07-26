//
//  SceneDelegate.swift
//  comics-challenge
//
//  Created by Brayam Mora on 26/07/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController()
        let homeViewController = HomeViewController()
        navigationController.pushViewController(homeViewController, animated: false)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

