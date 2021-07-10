//
//  NewUser.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 10.07.2021.
//

import Foundation

class UserStruct: Decodable {
    var username: String
    var password: String
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case username
        case password
        case name
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.username = try container.decode(String.self, forKey: .username)
        self.password = try container.decode(String.self, forKey: .password)
        self.name = try container.decode(String.self, forKey: .name)
        
    }
}
