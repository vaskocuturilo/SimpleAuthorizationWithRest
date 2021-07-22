//
//  SimpleLoginPageObjectTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import XCTest

class SimpleLoginPageObjectTest: BaseTestCase {
    
    func testSimpleLogin() throws {
        MainPage(application: application)
            .tapLoginButton()
            .typeEmail(email: "user")
            .typePassword(password: "user")
            .tapLogin()
            .tapLogoutButton()
            .tapOkButton()
            .checkMessage(message: "Example APP")
    }
}
