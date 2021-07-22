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
    
    public func registerNewUser(username: String, password: String, name: String, completionHandler: @escaping (Bool, String) -> ()) {
        let headers: HTTPHeaders = [
            "Accept": "application/json"
        ]
        let newUSer = NewUser(username: username, password: password, name: name)
        
        AF.request(Constans.Endpoints.register,
                   method: .post,
                   parameters: newUSer,
                   encoder: JSONParameterEncoder.default, headers: headers).response { response in
                    switch (response.result) {
                    
                    case .success( let data):
                        do {
                            let json = try JSONSerialization.jsonObject(with: data!, options: [])
                            let message = (json as AnyObject).value(forKey: "message") as! String
                            if response.response?.statusCode == 200 {
                                completionHandler(true, message)
                            } else {
                                completionHandler(false, message)
                            }
                            
                        } catch let error as NSError {
                            print("Failed to load: \(error.localizedDescription)")
                            completionHandler(false, error.localizedDescription)
                        }
                        
                    case .failure(let error):
                        print("Request error: \(error.localizedDescription)")
                        completionHandler(false, error.localizedDescription)
                    }
                   }
    }
    
    public func loginUser(username: String, password: String, completionHandler: @escaping (Bool, String) -> ()) {
        let headers: HTTPHeaders = [
            "Accept": "application/json"]
        AF.request(Constans.Endpoints.login,
                   method: .post,
                   parameters: ["username": username, "password": password],
                   encoder: JSONParameterEncoder.default, headers: headers).response { response in
                    switch (response.result) {
                    case .success(let data):
                        do {
                            let jsonData = try JSONSerialization.jsonObject(with: data!, options: [])
                            
                            if response.response?.statusCode == 200 {
                                let token = (jsonData as AnyObject).value(forKey: "token") as! String
                                completionHandler(true, token)
                            } else {
                                let message = (jsonData as AnyObject).value(forKey: "message") as! String
                                completionHandler(false, message)
                            }
                            
                        } catch let error as NSError {
                            print("Failed to load: \(error.localizedDescription)")
                            completionHandler(false, error.localizedDescription)
                        }
                        
                    case .failure(let error):
                        print("Request error: \(error.localizedDescription)")
                        completionHandler(false, error.localizedDescription)
                    }
                   }
        
    }
    
    public func removeUser(username: String, token: String, completionHandler: @escaping (Bool, String) -> ()) {
        let headers: HTTPHeaders = [
            "Authorization": token,
            "Accept": "application/json"]
        
        AF.request(Constans.Endpoints.remove,
                   method: .post,
                   parameters: ["username": username], encoder: JSONParameterEncoder.default, headers: headers).response { response in
                    switch (response.result) {
                    case .success(let data):
                        do {
                            let jsonData = try JSONSerialization.jsonObject(with: data!, options: [])
                            
                            if response.response?.statusCode == 200 {
                                let message = (jsonData as AnyObject).value(forKey: "message") as! String
                                completionHandler(true, message)
                            } else {
                                let message = (jsonData as AnyObject).value(forKey: "message") as! String
                                completionHandler(false, message)
                            }
                            
                        } catch let error as NSError {
                            print("Failed to load: \(error.localizedDescription)")
                            completionHandler(false, error.localizedDescription)
                        }
                        
                    case .failure(let error):
                        print("Request error: \(error.localizedDescription)")
                        completionHandler(false, error.localizedDescription)
                    }
                   }
    }
    
}

