//
//  SimpleCreateNewUserTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import XCTest

class SimpleCreateNewUserTest: XCTestCase {
    
    func testSimpleSignUp() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Sign Up"].tap()
        
        app.textFields["Email Required"].tap()
        app.textFields["Email Required"].typeText("user11")
        
        app.secureTextFields["Password Required"].tap()
        app.secureTextFields["Password Required"].typeText("user11")
        
        app.textFields["Name Required"].tap()
        app.textFields["Name Required"].typeText("user")
        
        app.buttons["Sign Up"].tap()
        
        app.buttons["Ok"].tap()
        
        app.buttons["Sign Out"].tap()
        
        app.buttons["Ok"].tap()
    }
    
}
