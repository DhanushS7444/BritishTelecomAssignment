//
//  UserViewModelTests.swift
//  Assignment1Tests
//
//  Created by Dhanush S on 06/03/23.
//

import XCTest
@testable import Assignment1

final class UserViewModelTests: XCTestCase {

    var userViewModel = UserViewModel()
    override func setUpWithError() throws {
        
    }
    
    func testgetUserData() {
        let expectation = self.expectation(description: "userdataFetech")
        userViewModel.getUserData { result in
            XCTAssertNotNil(result)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


}
