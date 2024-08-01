//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Александр on 29.07.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarApperance
        tabBar.scrollEdgeAppearance = tabBarApperance
        
        tabBar.items?.last?.title = user.person.fullName
        
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController
                guard let aboutMeVC = aboutMeVC as? AboutMeViewController else {
                    return
                }
                aboutMeVC.user = user
            }
        }
    }
}
