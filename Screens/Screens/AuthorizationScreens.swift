//
//  AuthorizationScreens.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation
import XCTest

final class AuthorizationScreens {
    private let container: AuthorizationTestCaseContainer
    
    init(container: AuthorizationTestCaseContainer) {
        self.container = container
    }
    
    lazy var rootScreen = RootScreen(application: container.application)
    lazy var loginScreen = LoginScreen(application: container.application)
    lazy var profileScreen = ProfileScreen(application: container.application)
    lazy var signUpScreen = SignUpScreen(application: container.application)
}

