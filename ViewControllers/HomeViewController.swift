
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var deleteButton: UIBarButtonItem!
    @IBOutlet weak var logoutButton: UIButton!
    
    @IBOutlet weak var userName: UILabel!
    
    var token = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        Buttons.styleButton(logoutButton)
        
        let userDefault = UserDefaults.standard
        userName.text = "This is name of : \(userDefault.string(forKey: "login")!)"
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
        let userDefault = UserDefaults.standard
        
        HelperApi.functions.removeUser(username: userDefault.string(forKey: "login")!,
                                       token: userDefault.string(forKey: "token")!) { (isSuccess, str) in
            if isSuccess {
                self.showSuccessMessage(message: str)
                
            }else {
                self.showErrorMessage(message: str)
            }
        }
    }
    
    internal func showErrorMessage(message: String) {
        let refreshAlert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
    
    internal func showSuccessMessage(message: String) {
        let refreshAlert = UIAlertController(title: "Information", message: message, preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
            guard let mainController = self.storyboard?.instantiateViewController(withIdentifier: Constans.StoryBoard.mainViewController) as? ViewController else {
                return
            }
            self.navigationController?.pushViewController(mainController, animated: true)
            self.view.window?.rootViewController = mainController
            self.view.window?.makeKeyAndVisible()
            
        }))
        present(refreshAlert, animated: true, completion: nil)
    }
    
    internal func transitionToHome(){
        
        let homeController = storyboard?.instantiateViewController(identifier: Constans.StoryBoard.homeViewController) as? HomeViewController
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
}
