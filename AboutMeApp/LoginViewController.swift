//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Александр on 26.07.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard userNameTF.text == "Alexander", passwordTF.text == "123" else {return}
            let welcomVC = segue.destination as? WelcomeViewController
            welcomVC?.userName = userNameTF.text
    }
    
    @IBAction func forgotUserNameButtonDidPressed() {
        
    }
    
    @IBAction func forgotPasswordDidPressed() {
        
    }
    
}

