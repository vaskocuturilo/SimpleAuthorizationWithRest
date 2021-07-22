//
//  MessagePage.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import Foundation
import XCTest

struct MessagePage: Page {
    let application: XCUIApplication
    
    func checkMessage(message: String) -> Self {
        let message = application.staticTexts[message]
        XCTAssertTrue(message.waitForExistence(timeout: 5))
        
        return self
    }
}
