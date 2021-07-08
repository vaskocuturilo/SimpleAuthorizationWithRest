//
//  Buttons.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 08.07.2021.
//

import Foundation
import UIKit

class Buttons {
    
    public static func styleButton(_ button: UIButton) {
        button.backgroundColor = UIColor.init(red: 0/255, green: 121/255, blue: 107/255, alpha: 1)
        button.layer.cornerRadius = 15.0
        button.tintColor = UIColor.white
    }
}
