//
//  PostViewModel.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation

struct PostViewModel {
    
    func getPostData(completion: @escaping(_ result: PostResponse?) -> Void)  {
        let postDataResponse = PostDataResource()
        postDataResponse.getPostsResponseData { postApiResponse in
            _ = completion(postApiResponse)
        }
    }
}
