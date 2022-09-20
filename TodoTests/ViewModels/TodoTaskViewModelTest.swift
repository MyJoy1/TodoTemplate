//
//  TodoTaskViewModelTest.swift
//  TodoTests
//
//  Created by Yu Ma on 2022/9/18.
//

import XCTest
@testable import Todo

class TodoTaskViewModelTest: XCTestCase {
    
    func testAddTodoTaskNameGivenAArrayWhenTestThenReturnAddNumberArray() throws {
        let todoTaskViewModel = TodoTaskViewModel()
        let todoTask = TodoTask(task: ["jack", "juddy", "ali"])
        
        let res = todoTaskViewModel.addTodoTaskNumber(todoTask.task)
        
        XCTAssertEqual(res, ["1. jack", "2. juddy", "3. ali"])
    }
    
    
    func testAddTodoTaskNameGivenEmptyArrayWhenTestThenReurnEmptyArray() throws {
        let todoTaskViewModel = TodoTaskViewModel()
        let todoTask = TodoTask(task: [])
        
        let res = todoTaskViewModel.addTodoTaskNumber(todoTask.task)
        
        XCTAssertEqual(res, [])
    }
    

}
