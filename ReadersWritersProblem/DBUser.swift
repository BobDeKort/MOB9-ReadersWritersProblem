//
//  DBUser.swift
//  ReadersWritersProblem
//
//  Created by Chase Wang on 2/23/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation

class DBUser {
    
    // MARK: - Singleton
    
    static let current = DBUser()
    
    // MARK: - Properties
    // Create a concurrent Queue
    fileprivate let concurrentUserQueue = DispatchQueue(label: "com.bob.RWP.UserQueue", attributes: .concurrent)
    
    // Create a fileprivate _age property
    fileprivate var _age: Int
    
    // Use this as the read-only variable
    var age: Int {
        var ageCopy: Int!
        concurrentUserQueue.sync {
            ageCopy = self._age
        }
        return ageCopy
    }
    
    // MARK: - Init
    
    private init(age: Int = 0) {
        self._age = age
    }
    
    // Use this to increase the users age
    func increaseAge() {
        concurrentUserQueue.async(flags: .barrier) {
            self._age += 1
        }
    }
}
