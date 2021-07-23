//
//  AuthorizationTestCaseContainer.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation
import XCTest

class AuthorizationTestCaseContainer {
    
    private(set) lazy var application = XCUIApplication()
    private(set) lazy var screens:  AuthorizationScreens = AuthorizationScreens (container: self)
    
    
    // MARK: - Init
    init() {
        _ = Bundle(for: AuthorizationScreens.self)
    }
}
