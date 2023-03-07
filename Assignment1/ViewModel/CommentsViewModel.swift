//
//  CommentsViewModel.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation

struct CommentsViewModel {
    
    func getCommentsData(commentRequest: Int, completion: @escaping(_ result: CommentsResponse?) -> Void)  {
        let commentsDataResource = CommentDataResource()
        commentsDataResource.getCommentsResponseData(commentRequest: commentRequest) { commentsApiResponse in
            _ = completion(commentsApiResponse)
        }
    }
}
