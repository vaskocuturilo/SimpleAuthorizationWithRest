//
//  LoginViewController.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import UIKit

fileprivate let AccessabilityRoot = Accessibility.Screen.Login.self
class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        TextFieldStyle.styleTextField(emailField)
        TextFieldStyle.styleTextField(passwordField)
        
        view.accessibilityIdentifier = AccessabilityRoot.View
        emailField.accessibilityIdentifier = AccessabilityRoot.EmailField
        passwordField.accessibilityIdentifier = AccessabilityRoot.PasswordField
        loginButton.accessibilityIdentifier = AccessabilityRoot.LoginButton
    }
    
    @IBAction func tapLoginButton(_ sender: Any) {
        HelperApi.functions.loginUser(username: emailField.text!, password: passwordField.text!) {(isSucess, str) in
            if isSucess {
                let userDefaultStore = UserDefaults.standard
                userDefaultStore.set(self.emailField.text, forKey: "login")
                userDefaultStore.set(str, forKey: "token")
                self.transitionToHome()
            } else {
                self.showErrorMessage(message: str)
            }
        }
        
    }
    
    func transitionToHome() {
        
        let homeController = storyboard?.instantiateViewController(identifier: Constans.StoryBoard.homeViewController) as? HomeViewController
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
    
    internal func showErrorMessage(message: String) {
        
        let refreshAlert = UIAlertController(title: "Error Message", message: message, preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
}
