//
//  LoginViewController.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        TextFieldStyle.styleTextField(emailField)
        TextFieldStyle.styleTextField(passwordField)
    }
    
    @IBAction func tapLoginButton(_ sender: Any) {
        HelperApi.functions.loginUser(username: emailField.text!, password: passwordField.text!)
        let refreshAlert = UIAlertController(title: "Information", message: "Welcome \(emailField.text!)", preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
            self.transitionToHome()
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
    
    func transitionToHome(){
        
        let homeController = storyboard?.instantiateViewController(identifier: Constans.StoryBoard.homeViewController) as? HomeViewController
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */


