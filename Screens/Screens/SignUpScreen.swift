//
//  SignUpScreen.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation
import XCTest

fileprivate let AccessabilityRoot = Accessibility.Screen.SignUp.self
class SignUpScreen: AuthorizationBaseClass {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessabilityRoot.View]
    }
    
    public var emailField: XCUIElement {
        return self.application.textFields[AccessabilityRoot.EmailField]
    }
    
    public var passwordField: XCUIElement {
        return self.application.secureTextFields[AccessabilityRoot.PasswordField]
    }
    
    public var nameField: XCUIElement {
        return self.application.textFields[AccessabilityRoot.NameField]
    }
    
    public var signUpButton: XCUIElement {
        return self.application.buttons[AccessabilityRoot.SignUpButton]
    }
    
    public func enterRegisterInformation() {
        addEmail(email: "user123")
        addPassword(password: "user123")
        addName(name: "user123")
    }
    
    public func tapSignUp(){
        signUpButton.tap()
    }
    
    private func addEmail(email: String) {
        emailField.tap()
        emailField.typeText(email)
    }
    
    private func addPassword(password: String) {
        passwordField.tap()
        passwordField.typeText(password)
    }
    
    private func addName(name: String) {
        nameField.tap()
        nameField.typeText(name)
    }
}
