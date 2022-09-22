//
//  TaskListTVC.swift
//  TODO-list
//
//  Created by Mariya Babenko on 16.09.2022.
//

import UIKit





class TaskListTVC: UITableViewController {
    
    var arrayUserTask = [TaskModel]()
    var vc = TaskVC()
   
  
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arrayUserTask.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as? TaskCell else { return UITableViewCell() }
        arrayUserTask[indexPath.row].currentIndex = indexPath
        let task = arrayUserTask[indexPath.row]
        cell.cellData(task: task)
        return cell
      }
    
    
   
    @IBAction func showTaskVC(_ sender: Any) {
    let storyboard = UIStoryboard (name: "Main", bundle: nil)
        vc = storyboard.instantiateViewController(identifier: "TaskVC") as! TaskVC
        vc.saveTaskDeleagate = self
        present (vc, animated: true, completion: nil)
    }
    
}

extension TaskListTVC: SaveUserTaskDelegate {
  func saveTask(task: TaskModel) {
    arrayUserTask.append(task)
    tableView.reloadData()
  }
}


