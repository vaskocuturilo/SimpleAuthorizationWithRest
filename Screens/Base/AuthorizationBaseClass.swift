//
//  AuthorizationBaseClass.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation
import XCTest

class AuthorizationBaseClass {
    
    let application: XCUIApplication
    
    init(application: XCUIApplication) {
        self.application = application
    }
    
    var root: XCUIElement {
        fatalError("Use subclass of AuthorizationBaseClass instead base class")
    }
    
}
