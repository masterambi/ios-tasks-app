//
//  OngoingTaskTableViewCell.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 22/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import UIKit

class OngoingTaskTableViewCell: UITableViewCell {
    
    var actionButtonDidTap: (() -> Void)?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var deadlineLabel: UILabel!
    
    func configure(with task: Task) {
        titleLabel.text = task.title
        deadlineLabel.text = task.deadline?.toRelativeString()
        if task.deadline?.isOverDue() == true {
            deadlineLabel.textColor = .red
            deadlineLabel.font = UIFont(name: "AvenirNext-Medium", size: 12)
        }
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        actionButtonDidTap?()
    }
    
}
