//
//  Token.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 09.07.2021.
//

import Foundation

class UserToken: Decodable {
    var token: String
    
    enum CodingKeys: String, CodingKey {
        case token
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.token = try container.decode(String.self, forKey: .token)
    }
}
