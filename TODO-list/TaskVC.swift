//
//  TaskVC.swift
//  TODO-list
//
//  Created by Mariya Babenko on 16.09.2022.
//

import UIKit

class TaskVC: UIViewController {
    
    @IBOutlet weak var userTaskField: UITextField!
    
    weak var saveTaskDeleagate: SaveUserTaskDelegate?
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButton(_ sender: Any) {

    
        if let task = userTaskField.text {
            if !task.isEmpty {
                let task = TaskModel (taskName: task, taskcellColor: .black)
                saveTaskDeleagate?.saveTask(task: task)
                dismiss(animated: true, completion: nil)
            }
            // Проводим проверку текстового поля на nil, а также проверку на то, что в текстовом поле есть текст. Это обезопасит вас от сохранения пустых полей. После проверок вы должны создать экземпляр структуры TaskModel и проинициализировать обязательные поля — это название задачи и цвет ячейки.
        }
    }
}
