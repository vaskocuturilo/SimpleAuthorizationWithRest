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

struct User: Encodable {
    var username: String
    var password: String
}

class HelperApi {
    
    static let functions = HelperApi()
    
    public func registerNewUser(username: String, password: String, name: String) {
        let newUSer = NewUser(username: username, password: password, name: name)
        
        AF.request(Constans.Endpoints.register,
                   method: .post,
                   parameters: newUSer,
                   encoder: JSONParameterEncoder.default).response { response in
                    switch (response.result) {
                    
                    case .success( _):
                        
                        do {
                            let userInformation = try JSONDecoder().decode(ResponseData.self, from: response.data!)
                            print(userInformation.message)
                            
                        } catch let error as NSError {
                            print("Failed to load: \(error.localizedDescription)")
                        }
                        
                    case .failure(let error):
                        print("Request error: \(error.localizedDescription)")
                    }
                    
                   }
    }
    
    public func loginUser(username: String, password: String) {
        AF.request(Constans.Endpoints.login,
                   method: .post,
                   parameters: ["username":username, "password":password],
                   encoder: JSONParameterEncoder.default).responseJSON { response in
                    switch (response.result) {
                    case .success( _):
                        
                        do {
                            let userInformation = try JSONDecoder().decode(UserToken.self, from: response.data!)
                            print(userInformation.token)
                            
                        } catch let error as NSError {
                            print("Failed to load: \(error.localizedDescription)")
                        }
                        
                    case .failure(let error):
                        print("Request error: \(error.localizedDescription)")
                    }
                   }
    }
    
    public func removeUser(username: String) {
        let headers: HTTPHeaders = [
            "Authorization": "",
            "Accept": "application/json"
        ]
        AF.request(Constans.Endpoints.remove,
                   method: .post, parameters:["username": username], encoder: JSONParameterEncoder.default, headers: headers).response { response in
                    debugPrint(response)
                   }
    }
    
}

