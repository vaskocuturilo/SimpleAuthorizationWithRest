//
//  Constants.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import Foundation

struct Constans {
    
    struct StoryBoard {
        
        static let homeViewController = "home"
        
        static let mainViewController = "main"
        
        static let loginViewController = "login"
        
        static let signUpViewController = "signUp"
        
        static let userName = "Test Client"
    }
    
    struct Endpoints {
        static let register = "http://localhost:5000/auth/register"
        static let login = "http://localhost:5000/auth/login"
        static let remove = "http://localhost:5000/auth/remove"
    }
}
