//
//  DispatchBarrierUnitTests.swift
//  ReadersWritersProblem
//
//  Created by Chase Wang on 2/23/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import XCTest
@testable import ReadersWritersProblem

class DispatchBarrierUnitTests: XCTestCase {
    
    let iterations = 200_000
    
    var user: DBUser!
    
    override func setUp() {
        super.setUp()
        user = DBUser.current
    }
    
    func testDispatchBarrierReadersWritersProblem() {
        // solve with dispatch barriers
    }
    
}
