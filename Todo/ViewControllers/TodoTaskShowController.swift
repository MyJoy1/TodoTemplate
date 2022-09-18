//
//  ViewController.swift
//  Todo
//
//  Created by Weidong Gu on 2022/7/26.
//

import UIKit

class TodoTaskShowController: UIViewController {
    let todoTaskViewModel = TodoTaskViewModel()
    
    var taskSource: [String] = []
    var tableView: UITableView?
    
    static let tableXPosition: CGFloat = 0
    static let tableYPosition: CGFloat = 0
    static let UITableViewCellIdentifier = "UITableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }

    private func configTableView() {
        tableView = UITableView(frame: CGRect(
            x: TodoTaskShowController.tableXPosition,
            y: TodoTaskShowController.tableYPosition,
            width: self.view.frame.width,
            height: view.bounds.height))
        
        tableView?.dataSource = self
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: TodoTaskShowController.UITableViewCellIdentifier)
        
        guard let tableView = tableView else {
            return
        }
        self.view.addSubview(tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        taskSource = todoTaskViewModel.addTodoTaskNumber(todoTaskViewModel.getTodoTask())
        tableView?.reloadData()
    }
}

extension TodoTaskShowController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int {
        return taskSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: TodoTaskShowController.UITableViewCellIdentifier)!
        cell.textLabel?.text = taskSource[indexPath.row]
        return cell
    }
}



