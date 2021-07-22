//
//  MainPage.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import Foundation
import XCTest

struct MainPage: Page {
    
    let application: XCUIApplication
    
    private enum Identifiers {
           static let loginButton = "Login"
           static let signUpButton = "SignUp"
        }
    
    func tapLoginButton() -> LoginPage {
        
        application.buttons[Identifiers.loginButton].tap()
        
        return LoginPage(application: application)
    }
    
    func tapSignUpButton() -> SignUpPage {
        
        application.buttons[Identifiers.loginButton].tap()
        
        return SignUpPage(application: application)
    }
}
