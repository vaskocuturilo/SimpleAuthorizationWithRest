//
//  SimpleSignUpPageObjectTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import XCTest

class SimpleSignUpPageObjectTest: BaseTestCase {
    
    func testSimpleSignUpPageObject() throws {
        MainPage(application: application)
            .tapSignUpButton()
            .typeEmail(email: "user11")
            .typePassword(password: "user11")
            .typeName(name: "user11")
            .tapSignUpButton()
            .tapConfirmMessage()
            .tapLogoutButton()
            .tapOkButton()
            .checkMessage(message: "Example APP")
    }
    
}
