//
//  TodoTaskViewModelSpec.swift
//  Todo
//
//  Created by Yu Ma on 2022/9/18.
//  
//

import Quick
import Nimble
@testable import Todo

class TodoTaskViewModelSpec: QuickSpec {
    override func spec() {
        describe("addTodoTaskNumber"){
            context("add number for every task"){
                let todoTaskViewModel = TodoTaskViewModel()
                let data = ["jack", "juddy", "ali"]
                
                let res = todoTaskViewModel.addTodoTaskNumber(data)
                it("success add number"){
                    expect(res).to(equal(["1. jack", "2. juddy", "3. ali"]))
                }
            }
        }
    }
}
