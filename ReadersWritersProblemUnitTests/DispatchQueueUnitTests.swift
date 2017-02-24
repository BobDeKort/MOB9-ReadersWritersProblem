//
//  DispatchQueueUnitTest.swift
//  ReadersWritersProblem
//
//  Created by Chase Wang on 2/23/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import XCTest
@testable import ReadersWritersProblem

class DispatchQueueUnitTests: XCTestCase {
    
    let iterations = 200_000
    
    var user: DQUser!
    
    override func setUp() {
        super.setUp()
        user = DQUser.current
    }
    
    func testDispatchQueueReadersWritersProblem() {
        // solve with dispatch queues
    }
    
}
