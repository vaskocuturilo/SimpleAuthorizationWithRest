//
//  SignUpViewController.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func tapSignUpButton(_ sender: Any) {
        HelperApi.functions.registerNewUser(username: emailField.text!, password: passwordField.text!, name: nameField.text!)
        
        let refreshAlert = UIAlertController(title: "Information", message: "A new user was created.", preferredStyle: UIAlertController.Style.alert)
        
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
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
