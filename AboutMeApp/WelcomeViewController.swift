//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр on 26.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet private var greetingsLabel: UILabel!
    
    // MARK: - Properties
    var userName: String!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBackgroundColor()
        greetingsLabel.text = "Welcome, \(userName ?? "")!"
    }
    
    // MARK: - Private Methods
    private func setupBackgroundColor() {
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
