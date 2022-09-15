//
//  ViewController.swift
//  Todo
//
//  Created by Weidong Gu on 2022/7/26.
//

import UIKit

class ViewController: UIViewController {
    
    var taskSource: [String] = []
    var tableView: UITableView?
    
    static let tableXPosition = 0
    static let tableYPosition = 0
    static let UITableViewCellIdentifier = "UITableViewCell"
    
    override func viewDidLoad() {
      super.viewDidLoad()
    // Do any additional setup after loading the view.
      configTableView()
    }

    private func configTableView(){
        tableView = UITableView(frame: CGRect(
            x: CGFloat(ViewController.tableXPosition),
            y: CGFloat(ViewController.tableYPosition),
            width: self.view.frame.width,
            height: view.bounds.height))
        
        tableView?.dataSource = self
        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: ViewController.UITableViewCellIdentifier)
        
        guard let tableView = tableView else { return }
        self.view.addSubview(tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        taskSource = StorageManager.getTodoList()
        tableView?.reloadData()
//        print(taskSource)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        return taskSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: ViewController.UITableViewCellIdentifier)!
        cell.textLabel?.text = "\(taskSource[indexPath.row])"
        return cell
    }

}

class TodoTaskAddController: UIViewController{
    @IBOutlet weak var taskText: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    
    @IBAction func clickBtn(_ sender: UIButton) {
        guard let taskName = taskText.text else { return  }
        StorageManager.saveTodoItem(content: taskName)
//        print(taskName)
        
        confirmButton.backgroundColor = .orange
        confirmButton.tintColor = .white
        confirmButton.layer.cornerRadius = 3
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
    }
}


