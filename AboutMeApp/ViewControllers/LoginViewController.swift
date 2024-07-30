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
    private let user = User.getUser()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as? UITabBarController
        tabBarController?.viewControllers?.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userNameTF.text
            } else if let navigationVC = viewController as? UINavigationController {
                if let aboutMeVC = navigationVC.topViewController as? AboutMeViewController {
                    aboutMeVC.name = user.person.name
                    aboutMeVC.surname = user.person.surname
                    aboutMeVC.company = user.person.company
                    aboutMeVC.department = user.person.department
                    aboutMeVC.jobTitle = user.person.jobTitle
                    aboutMeVC.biography = user.person.biography
                    aboutMeVC.photo = user.person.photo
                    
                    aboutMeVC.navigationItem.title = user.person.getFullName()
                }
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: Validation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: """
                Please, enter correct login and password.
                But if you are a fraudster, turn yourself in to the police.
                """
            )
            return false
        }
        return true
    }
    
    // MARK: - IB Actions
    @IBAction private func showHintButtonPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \"Alexander\" 👀")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \"123\" 🤫")
        
    }
    
    @IBAction func unwindToBack(_ unwindSegue: UIStoryboardSegue) {
        userNameTF.text = user.login
        passwordTF.text = user.password
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

