//
//  TaskCell.swift
//  TODO-list
//
//  Created by Mariya Babenko on 16.09.2022.
//

import UIKit

class TaskCell: UITableViewCell {
   
    
    @IBOutlet weak var someTask: UILabel!
    @IBOutlet weak var viewCell: UIView!
    
    func cellData(task: TaskModel) {
        someTask.text = task.taskName
       
      }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated) }
    
    
    @IBAction func executeTaskBtnPressed(_ sender: Any) {
        print ("remove")
    }
    @IBAction func removeTaskBtnPressed(_ sender: Any) {
        print ("execute")
        viewCell.backgroundColor = .green
    }
    
   
    

   

}
