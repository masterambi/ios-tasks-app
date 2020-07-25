//
//  TaskVCDelegate.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 22/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import Foundation

protocol NewTasksVCDelegate: class {
    func didAddTask(_ task: Task)
    func didEditTask(_ task: Task)
}
