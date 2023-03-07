//
//  UserDataResource.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation

struct CommentDataResource {
    
    func  getCommentsResponseData(commentRequest: Int, completion: @escaping (_ result: CommentsResponse?) -> Void) {
       let userUrl = URL(string: ApiEndpoints.posts + "/" + String(commentRequest) + "/" + "comments")!
       let httpUtility = HttpUtility()
       httpUtility.getApiData(requestUrl: userUrl, resultType: CommentsResponse.self) { commentsApiResponse in
           _ = completion(commentsApiResponse)
       }
    }
}
