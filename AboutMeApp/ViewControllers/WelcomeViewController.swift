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
    var user: User!
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupBackgroundColor()
        
        greetingsLabel.text = "Welcome, \(user.login)! \n My name is \(user.person.fullName)!"
    }
    
}
