//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Александр on 11.02.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showAuthorizationData(_ sender: UIButton) {
        
        sender.tag == 0 ? 
        showAlert(withTitle: "Oops!", andMessage: "Your name is 1 😉") : 
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1 😉")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

