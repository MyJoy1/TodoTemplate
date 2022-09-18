//
//  TodoTaskShowViewModel.swift
//  Todo
//
//  Created by Yu Ma on 2022/9/18.
//

import Foundation
import UIKit
final class TodoTaskViewModel {
    static let NumberOne = 1
    
    var todoTask = TodoTask(task: [])
    
    /// 获取数据
    func getTodoTask() -> [String]{
        return StorageManager.getTodoList()
    }
    
    /// 添加序号
    func addTodoTaskNumber(_ task: [String]) -> [String] {
        todoTask.task = task
        var taskNumber = TodoTaskViewModel.NumberOne
        for item in task{
            todoTask.task[taskNumber - TodoTaskViewModel.NumberOne] = "\(taskNumber). " + "\(item)"
            taskNumber += TodoTaskViewModel.NumberOne
        }
        
        return todoTask.task
    }
    
    /// 保存数据
    func saveTodoTask(_ todoTask: String) {
        StorageManager.saveTodoItem(content: todoTask)
    }
    
}
