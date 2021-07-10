//
//  ResponseData.swift
//  SimpleAuthorizationWithRest
//
//  Created by Anton Smirnov on 10.07.2021.
//

import Foundation

class ResponseData: Decodable {
    var message: String
    
    enum CodingKeys: String, CodingKey {
        case message
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.message = try container.decode(String.self, forKey: .message)
        
    }
}
