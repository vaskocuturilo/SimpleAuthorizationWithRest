//
//  HomeViewController.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var deleteButton: UIBarButtonItem!
    @IBOutlet weak var logoutButton: UIButton!
    
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        Buttons.styleButton(logoutButton)
        
    }
    
    @IBAction func tapLogoutButton(_ sender: Any) {
        let refreshAlert = UIAlertController(title: "Confirm", message: "Are you sure you want logout?", preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
            guard let mainController = self.storyboard?.instantiateViewController(withIdentifier: Constans.StoryBoard.mainViewController) as? ViewController else {
                return
            }
            self.navigationController?.pushViewController(mainController, animated: true)
            self.view.window?.rootViewController = mainController
            self.view.window?.makeKeyAndVisible()
            
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
    
    @IBAction func tapDeleteButton(_ sender: Any) {
        HelperApi.functions.removeUser(username: userName.text!)
        let refreshAlert = UIAlertController(title: "Information", message: "The user was remove.", preferredStyle: UIAlertController.Style.alert)
        
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
