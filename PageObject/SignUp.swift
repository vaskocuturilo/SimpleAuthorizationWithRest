//
//  SignUp.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import Foundation
import XCTest

struct SignUpPage: Page {
    let application: XCUIApplication
    
    private enum Identifiers {
        static let emailField = "Email Required"
        static let passwordField = "Password Required"
        static let nameField = "Name Required"
        static let signUpButton = "Sign Up"
        static let confirmMessage = "Ok"
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
    
    func typeName(name: String) -> Self {
        let userName = application.textFields[Identifiers.nameField]
        userName.tap()
        userName.typeText(name)
        
        return self
    }
    
    func tapSignUpButton() -> Self  {
        let signUpButton = application.buttons[Identifiers.signUpButton]
        signUpButton.tap()
        
        return self
    }
    
    func tapConfirmMessage() -> LogoutPage {
        let confirmMessage = application.buttons[Identifiers.confirmMessage]
        confirmMessage.tap()
        
        return LogoutPage(application: application)
    }
}
