//
//  SignUpViewController.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import UIKit

fileprivate let AccessabilityRoot = Accessibility.Screen.SignUp.self
class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.accessibilityIdentifier = AccessabilityRoot.View
        emailField.accessibilityIdentifier = AccessabilityRoot.EmailField
        passwordField.accessibilityIdentifier = AccessabilityRoot.PasswordField
        nameField.accessibilityIdentifier = AccessabilityRoot.NameField
        signUpButton.accessibilityIdentifier = AccessabilityRoot.SignUpButton

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func tapSignUpButton(_ sender: Any) {
        HelperApi.functions.registerNewUser(username: emailField.text!, password: passwordField.text!, name: nameField.text!) { (isSuccess, str) in
            if isSuccess {
                let userDefaultStore = UserDefaults.standard
                userDefaultStore.set(self.emailField.text, forKey: "login")
                self.showSuccessMessage(message: str)
            } else {
                self.showErrorMessage(message: str)
            }
        }
    }
    
    internal func showSuccessMessage(message: String) {
        let refreshAlert = UIAlertController(title: "Sucess", message: message, preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            self.transitionToHome()
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
    
    internal func showErrorMessage(message: String) {
        let refreshAlert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
    
    internal func transitionToHome() {
        
        let homeController = storyboard?.instantiateViewController(identifier: Constans.StoryBoard.homeViewController) as? HomeViewController
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
}
