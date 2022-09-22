//
//  Delegates.swift
//  TODO-list
//
//  Created by Mariya Babenko on 16.09.2022.
//

import Foundation

protocol SaveUserTaskDelegate: class {
  func saveTask(task: TaskModel)
}
