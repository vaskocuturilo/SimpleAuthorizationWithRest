//
//  HelperApi.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 05.07.2021.
//

import Foundation
import Alamofire

struct NewUser {
    var username: String
    var password: String
    var name: String
}

class HelperApi {
    
    public func registerNewUSer(username: String, password: String, name: String) {
        AF.request("http://localhost:5000/auth/register", method: .post,
                   parameters: ["username": username, "password": password, "name": name], encoding: JSONEncoding.default).responseJSON {
                    response in
                   }
    }
    
}
