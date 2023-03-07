//
//  UserViewModel.swift
//  Assignment1
//
//  Created by Dhanush S on 06/03/23.
//

import Foundation

struct UserViewModel {
    
    func getUserData(completion: @escaping(_ result: UserResponse?) -> Void)  {
        let userDataResource = UserDataResource()
        userDataResource.getUserResponseData { userApiResponse in
            _ = completion(userApiResponse)
        }
    }
}
