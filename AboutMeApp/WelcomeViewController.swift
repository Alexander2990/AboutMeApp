//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Александр on 26.07.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingsLabel: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingsLabel.text = "Welcome, \(userName ?? "")!"
    }
    
    @IBAction func logOutButtonDidPressed() {
        dismiss(animated: true)
    }
    

}
