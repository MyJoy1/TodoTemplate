//
//  TodoTaskShowViewModel.swift
//  Todo
//
//  Created by Yu Ma on 2022/9/18.
//

import Foundation
import UIKit
final class TodoTaskViewModel {
    /// 获取数据
    func getTodoTask() -> [String]{
        return StorageManager.getTodoList()
    }
    
    /// 添加序号
    func addTodoTaskNumber(_ task: [String]) -> [String] {
        var todoTask = TodoTask(task: [])
        todoTask.task = task
        
        for i in 0..<todoTask.task.count {
            todoTask.task[i] = "\(i+1). " + "\(todoTask.task[i])"
        }
        
        return todoTask.task
    }
    
    /// 保存数据
    func saveTodoTask(_ todoTask: String) {
        StorageManager.saveTodoItem(content: todoTask)
    }
    
    
    func addTask(text: String, completed: () -> Void) {
        StorageManager.saveTodoItem(content: text)
        completed()
    }
}
