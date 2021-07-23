//
//  ViewController.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 03.07.2021.
//

import UIKit

fileprivate let AccessibilityRoot = Accessibility.Screen.Root.self
class ViewController: UIViewController {
    
    @IBOutlet weak var SignButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.accessibilityIdentifier = AccessibilityRoot.View
        LoginButton.accessibilityIdentifier = AccessibilityRoot.LoginButton
        SignButton.accessibilityIdentifier = AccessibilityRoot.SignUpButton
    }
}

