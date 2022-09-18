//
//  TodoTaskViewModelTest.swift
//  TodoTests
//
//  Created by Yu Ma on 2022/9/18.
//

import XCTest
@testable import Todo

class TodoTaskViewModelTest: XCTestCase {
    
    func testAddTodoTaskNameFunction() throws {
        let todoTaskViewModel = TodoTaskViewModel()
        let data = ["jack", "juddy", "ali"]
        
        let res = todoTaskViewModel.addTodoTaskNumber(data)
        
        XCTAssertEqual(res, ["1. jack", "2. juddy", "3. ali"])
    }

}
