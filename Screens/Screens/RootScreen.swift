//
//  RootScreen.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation
import XCTest

fileprivate let AccessibilityRoot = Accessibility.Screen.Root.self
class RootScreen: AuthorizationBaseClass {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessibilityRoot.View]
    }
    
    public var loginButton :XCUIElement {
        return self.application.buttons[AccessibilityRoot.LoginButton]
    }
    
    public var signUpButton :XCUIElement {
        return self.application.buttons[AccessibilityRoot.SignUpButton]
    }
    
    public func tapLoginButton() {
        loginButton.tap()
    }
    
    public func tapSignUpButton() {
        signUpButton.tap()
    }
}
