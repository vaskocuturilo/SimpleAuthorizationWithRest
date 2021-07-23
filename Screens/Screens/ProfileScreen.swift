//
//  ProfileScreen.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation
import XCTest

fileprivate let AccessabilityRoot = Accessibility.Screen.Profile.self
class ProfileScreen: AuthorizationBaseClass {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessabilityRoot.View]
    }
    
    public var logoutButton: XCUIElement {
        return self.application.buttons[AccessabilityRoot.LogoutButton]
    }
    
    func tapLogoutButton() {
        logoutButton.tap()
    }
}
