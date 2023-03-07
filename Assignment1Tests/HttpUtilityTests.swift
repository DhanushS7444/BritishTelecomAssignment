//
//  HttpUtilityTests.swift
//  Assignment1Tests
//
//  Created by Dhanush S on 07/03/23.
//

import XCTest
@testable import Assignment1

final class HttpUtilityTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_getAPI_with_validRequest() {
        let utility = HttpUtility()
        let userUrl = URL(string: ApiEndpoints.users)!
        utility.getApiData(requestUrl: userUrl, resultType: UserResponse.self) { result in
            XCTAssertNotNil(result)
        }
    }
    
    func test_getAPI_with_invalidResponse() {
        let utility = HttpUtility()
        let userUrl = URL(string: ApiEndpoints.users)!
        utility.getApiData(requestUrl: userUrl, resultType: UserModel.self) { result in
            XCTAssertNil(result)
        }
    }
}
