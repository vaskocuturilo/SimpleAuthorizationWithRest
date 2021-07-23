//
//  SimpleRemoveUserTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import XCTest

class SimpleRemoveUserTest: XCTestCase {

    func testSimpleRemoveUser() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["Login"].tap()
        
        app.textFields["Email Required"].tap()
        app.textFields["Email Required"].typeText("user11")
        
        app.secureTextFields["Password Required"].tap()
        app.secureTextFields["Password Required"].typeText("user11")
    
        app.buttons["Login"].tap()
        
        app.buttons["Delete"].tap()
        
        app.buttons["Ok"].tap()
    }

}
