//
//  HomeViewController.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var logoutButton: UIButton!
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
