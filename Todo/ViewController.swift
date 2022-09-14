//
//  ViewController.swift
//  Todo
//
//  Created by Weidong Gu on 2022/7/26.
//

import UIKit

class ViewController: UIViewController {

  var task: [String] = [
      "晨练",
      "背单词",
      "完成作业"]
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
      configTableView()
  }

  private func configTableView(){
    let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: view.bounds.height)
        self.view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.dataSource = self
  }
}
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        return task.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")!
        cell.textLabel?.text = task[indexPath.row]
        return cell
    }
}


