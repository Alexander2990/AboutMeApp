//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Александр on 26.07.2024.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!
    
    // MARK: - Private Properties
    private let user = "Alexander"
    private let password = "123"
    
    // MARK: Validation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password."
            )
            return false
        }
        return true
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomVC = segue.destination as? WelcomeViewController
        welcomVC?.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction private func showHintButtonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(withTitle: "Oops!", andMessage: "Your name is \"Alexander\" 👀")
        } else {
            showAlert(withTitle: "Oops!", andMessage: "Your password is \"123\" 🤫")
        }
    }
    
    @IBAction func unwindToBack(_ unwindSegue: UIStoryboardSegue) {
        let welcomVC = unwindSegue.source as? WelcomeViewController
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

