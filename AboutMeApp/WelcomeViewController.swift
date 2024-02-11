//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр on 11.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userGreetingLabel: UILabel!
    
    var userName: String!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userGreetingLabel.text = "Welcome \(userName ?? "")!"
    }

}
