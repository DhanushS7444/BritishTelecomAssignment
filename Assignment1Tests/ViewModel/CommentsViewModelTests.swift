//
//  CommentsViewModelTests.swift
//  Assignment1Tests
//
//  Created by Dhanush S on 07/03/23.
//

import XCTest
@testable import Assignment1

final class CommentsViewModelTests: XCTestCase {

    var commentViewModel = CommentsViewModel()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetCommentsData() {
        let expectation = self.expectation(description: "commentDataFetch")
        commentViewModel.getCommentsData(commentRequest: 3) { result in
            XCTAssertNotNil(result)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }
}
