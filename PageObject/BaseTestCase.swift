//
//  BaseTestCase.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 22.07.2021.
//

import Foundation
import XCTest

class BaseTestCase: XCTestCase {
    var application: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        application = XCUIApplication()
        application.launchArguments = ["testing"]
        application.launch()
    }
    
    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.lifetime = .deleteOnSuccess
        add(attachment)
        application.terminate()
    }
}
