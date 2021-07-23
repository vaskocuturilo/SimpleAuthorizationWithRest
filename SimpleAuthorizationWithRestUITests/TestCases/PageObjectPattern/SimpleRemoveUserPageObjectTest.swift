//
//  SimpleRemoveUserPageObjectTest.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import XCTest

class SimpleRemoveUserPageObjectTest: BaseTestCase {
    
    func testSimpleRemoveUserPageObject() throws {

        MainPage(application: application)
            .tapLoginButton()
            .typeEmail(email: "user11")
            .typePassword(password: "user11")
            .tapLogin()
            .tapTrashButton()
            .tapOkButton()
            .checkMessage(message: "Example APP")
    }
    
}
