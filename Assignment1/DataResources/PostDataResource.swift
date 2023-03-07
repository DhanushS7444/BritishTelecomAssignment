//
//  PostDataResource.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation

struct PostDataResource {
    
    func  getPostsResponseData(completion: @escaping (_ result: PostResponse?) -> Void) {
       let userUrl = URL(string: ApiEndpoints.posts)!
       let httpUtility = HttpUtility()
       httpUtility.getApiData(requestUrl: userUrl, resultType: PostResponse.self) { postApiResponse in
           _ = completion(postApiResponse)
       }
    }
}
