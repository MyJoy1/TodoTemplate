//
//  TodoTaskAddController.swift
//  Todo
//
//  Created by Yu Ma on 2022/9/18.
//
import UIKit

class TodoTaskAddController: UIViewController {
    let todoTaskViewModel = TodoTaskViewModel()
    
//    typealias taskCompleted = () -> Void
//    var completed: taskCompleted?
    
    @IBOutlet weak var taskText: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickBtn(_ sender: UIButton) {
        guard let taskName = taskText.text else { return }
        todoTaskViewModel.addTask(text: taskName) { back() }
//        todoTaskViewModel.saveTodoTask(taskName)
//        back()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
