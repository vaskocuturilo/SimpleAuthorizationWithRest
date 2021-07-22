//
//  LoginPage.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import Foundation
import XCTest

struct LoginPage: Page {
    
    let application: XCUIApplication
    
    private enum Identifiers {
        static let emailField = "Email Required"
        static let passwordField = "Password Required"
        static let loginButton = "Login"
    }
    
    func typeEmail(email: String) -> Self {
        let userEmail = application.textFields[Identifiers.emailField]
        userEmail.tap()
        userEmail.typeText(email)
        
        return self
    }
    
    func typePassword(password: String) -> Self {
        let userPassword = application.secureTextFields[Identifiers.passwordField]
        userPassword.tap()
        userPassword.typeText(password)
        
        return self
    }
    
    func tapLogin() -> LogoutPage  {
        let loginButton = application.buttons[Identifiers.loginButton]
        loginButton.tap()
        
        return LogoutPage(application: application)
    }
}
