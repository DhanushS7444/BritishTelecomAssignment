//
//  UserDataResource.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation

struct UserDataResource {
    
    func  getUserResponseData(completion: @escaping (_ result: UserResponse?) -> Void) {
       let userUrl = URL(string: ApiEndpoints.users)!
       let httpUtility = HttpUtility()
       httpUtility.getApiData(requestUrl: userUrl, resultType: UserResponse.self) { userApiResponse in
           _ = completion(userApiResponse)
       }
    }
}
