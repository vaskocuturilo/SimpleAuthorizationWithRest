//
//  HelperApi.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 05.07.2021.
//

import Foundation
import Alamofire
import UIKit

struct NewUser: Encodable {
    var username: String
    var password: String
    var name: String
}

class HelperApi {
    
    static let functions = HelperApi()
    
    public func registerNewUser(username: String, password: String, name: String) {
        let newUSer = NewUser(username: username, password: password, name: name)
        
        AF.request(Constans.Endpoints.register,
                   method: .post,
                   parameters: newUSer,
                   encoder: JSONParameterEncoder.default).response { response in
                    debugPrint(response)
                   }
    }
}
