//
//  SimpleLoginTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import XCTest

class SimpleLoginTest: AuthorizationTestCase {
    
    func testSimpleLogin() throws {
        
        waitForElementToAppear(element: screens.rootScreen.root)
        screens.rootScreen.tapLoginButton()
        
        screens.loginScreen.enterCredential()
        
        waitForElementToAppear(element: screens.profileScreen.root)
        screens.profileScreen.tapLogoutButton()
        
        tapAlertButtonIfExists(named: "Ok")
        
        waitForElementToAppear(element: screens.rootScreen.root)
        XCTAssert(screens.rootScreen.root.exists, "Main screen must be open")
    }
    
}
