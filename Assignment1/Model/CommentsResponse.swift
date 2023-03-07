//
//  CommentModel.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation

// MARK: - CommentModel
struct Comments: Codable {
    let postID, id: Int
    let name, email, body: String

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
}

typealias CommentsResponse = [Comments]

