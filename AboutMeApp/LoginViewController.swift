//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Александр on 11.02.2024.
//

import UIKit

struct User {
    let user: String
    let password: String
}

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let userData = User(user: "Alexander", password: "1")
    
    // MARK: - Overrides Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.userName = userNameTextField.text
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == userData.user, passwordTextField.text == userData.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please enter correct login and password"
            )
            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 0 ? showAlert(
            withTitle: "Oops!",
            andMessage: "Your User Name is Alexander 😉"
        ) : showAlert(withTitle: "Oops!", andMessage: "Your password is 1 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

