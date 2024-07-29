//
//  UIViewController+GradientBackground.swift
//  AboutMeApp
//
//  Created by Александр on 30.07.2024.
//

import UIKit

extension UIViewController {
    func setupBackgroundColor() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.blue.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
