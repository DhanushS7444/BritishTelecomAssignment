//
//  PostModel.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation



// MARK: - PostModel
struct PostModel: Decodable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.userID = try container.decode(Int.self, forKey: .userID)
        self.title = try container.decode(String.self, forKey: .title)
        self.body = try container.decode(String.self, forKey: .body)
    }
}

// MARK: - PostResponse
typealias PostResponse = [PostModel]

