//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Александр on 29.07.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarApperance = UITabBarAppearance()
        tabBarApperance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarApperance
        tabBar.scrollEdgeAppearance = tabBarApperance
    }
}
