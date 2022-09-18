//
//  TodoTaskAddController.swift
//  Todo
//
//  Created by Yu Ma on 2022/9/18.
//
import UIKit

class TodoTaskAddController: UIViewController {
    let todoTaskViewModel = TodoTaskViewModel()
    
    @IBOutlet weak var taskText: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickBtn(_ sender: UIButton) {
        guard let taskName = taskText.text else { return }
        
        todoTaskViewModel.saveTodoTask(taskName)
        
        back()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
