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
        
        greetingsLabel.text = "Welcome, User! \n My name is \(userName ?? "")!"
    }
    
}
