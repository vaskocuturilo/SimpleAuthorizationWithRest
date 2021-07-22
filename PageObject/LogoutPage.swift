//
//  LogoutPage.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import Foundation
import XCTest

struct LogoutPage: Page {
    var application: XCUIApplication
    
    private enum Identifiers {
        static let logoutButton = "Sign Out"
        static let okButton = "Ok"
        static let trashButton = "Delete"
    }
    
    func tapLogoutButton() -> Self {
        
        let logoutButton = application.buttons[Identifiers.logoutButton]
        logoutButton.tap()
        
        return self
    }
    
    func tapOkButton() -> MessagePage {
        
        let okButton = application.buttons[Identifiers.okButton]
        okButton.tap()
        
        return MessagePage(application: application)
    }
    
    func tapTrashButton() -> LogoutPage  {
        let trashButton = application.buttons[Identifiers.trashButton]
        trashButton.tap()
        
        return LogoutPage(application: application)
        
    }
}
