//
//  SimpleLoginTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import XCTest

class SimpleLoginTest: XCTestCase {
    
    func testSimpleLogin() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Login"].tap()
        
        app.textFields["Email Required"].tap()
        app.textFields["Email Required"].typeText("user")
        
        app.secureTextFields["Password Required"].tap()
        app.secureTextFields["Password Required"].typeText("user")
    
        app.buttons["Login"].tap()

        app.buttons["Sign Out"].tap()

        app.buttons["Ok"].tap()
    }
    
}
