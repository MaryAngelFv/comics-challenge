//
//  HomeTabBarController.swift
//  comics-challenge
//
//  Created by Brayam Mora on 26/07/22.
//

import UIKit

class HomeTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .red
        setUpViewControllers()
    }
    
    func setUpViewControllers() {
        viewControllers = [
            createNavController(
                for: ComicListViewController(),
                title: "All",
                image: UIImage(systemName: "house.fill")!
            ),
            createNavController(
                for: FavouritesViewController(),
                title: "Favourites",
                image: UIImage(systemName: "heart.fill")!
            )
        ]
    }
    
    private func createNavController(
        for rootViewController: UIViewController,
        title: String,
        image: UIImage
    ) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        rootViewController.navigationItem.title = title
        return navController
    }

}
