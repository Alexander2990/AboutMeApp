//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр on 11.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var userGreetingLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userGreetingLabel.text = "Welcome \(userName ?? "")"
    }

}
