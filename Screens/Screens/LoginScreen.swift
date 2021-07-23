//
//  LoginScreen.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation
import XCTest

fileprivate let AccessabilityRoot = Accessibility.Screen.Login.self
class LoginScreen: AuthorizationBaseClass {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessabilityRoot.View]
    }
    
    public var emailField :XCUIElement {
        return self.application.textFields[AccessabilityRoot.EmailField]
    }
    
    public var passwordField :XCUIElement {
        return self.application.secureTextFields[AccessabilityRoot.PasswordField]
    }
    
    public var loginButton :XCUIElement {
        return self.application.buttons[AccessabilityRoot.LoginButton]
    }
    
    private func enterEmail() {
        emailField.tap()
        emailField.typeText("user")
    }
    
    private func enterPassword() {
        passwordField.tap()
        passwordField.typeText("user")
    }
    
    private func tapLoginButton() {
        loginButton.tap()
        
    }
    
    public func enterCredential() {
        enterEmail()
        enterPassword()
        tapLoginButton()
    }
}
