//
//  AccessibilityEnum.swift
//  SimpleAuthorizationWithRestUITests
//
//  Created by Anton Smirnov on 23.07.2021.
//

import Foundation

fileprivate protocol AccessibilityEnum {
    
    static func wrapIdentifier(_ label: String) -> String
    
}

fileprivate extension AccessibilityEnum {
    static func wrapIdentifier(_ label: String) -> String {
        return "\(self).\(label)"
    }
}

enum Accessibility {
    
    /// Screens
    enum Screen {
        enum Root: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            // Buttons on main page
            public static let LoginButton = wrapIdentifier("LoginButton")
            public static let SignUpButton = wrapIdentifier("SignUpButton")
            
        }
        
        public enum Login: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            // Fields on login page
            public static let EmailField = wrapIdentifier("EmailField")
            public static let PasswordField = wrapIdentifier("PasswordField")
            public static let LoginButton = wrapIdentifier("LoginButton")
            
        }
        
        public enum SignUp: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            // Fields on sign up page
            public static let EmailField = wrapIdentifier("EmailField")
            public static let PasswordField = wrapIdentifier("PasswordField")
            public static let NameField = wrapIdentifier("NameField")
            public static let SignUpButton = wrapIdentifier("LoginButton")
            
        }
        
        public enum Profile: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            // Fields on profile page
            public static let LogoutButton = wrapIdentifier("LogoutButton")
            public static let DeleteButton = wrapIdentifier("DeleteButton")
            
        }
    }
}


