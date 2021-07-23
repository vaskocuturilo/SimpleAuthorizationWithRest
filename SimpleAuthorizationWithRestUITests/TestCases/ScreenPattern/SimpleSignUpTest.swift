//
//  SimpleSignUpTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import XCTest

class SimpleSignUpTest: AuthorizationTestCase {
    
    func testSimpleSignUp() throws {
        waitForElementToAppear(element: screens.rootScreen.root)
        screens.rootScreen.tapSignUpButton()
        
        waitForElementToAppear(element: screens.signUpScreen.root)
        screens.signUpScreen.enterRegisterInformation()
        screens.signUpScreen.tapSignUp()
        
        waitForElementToAppear(element: screens.signUpScreen.root)
        tapAlertButtonIfExists(named: "Ok")
        
        waitForElementToAppear(element: screens.profileScreen.root)
        screens.profileScreen.tapLogoutButton()
        tapAlertButtonIfExists(named: "Ok")
        
        waitForElementToAppear(element: screens.rootScreen.root)
        XCTAssert(screens.rootScreen.root.exists, "Main screen must be open")
    }
    
}
