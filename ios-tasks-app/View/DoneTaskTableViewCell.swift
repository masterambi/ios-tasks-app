//
//  DoneTaskTableViewCell.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 22/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import UIKit

class DoneTaskTableViewCell: UITableViewCell {
    
    var actionButtonDidTap: (() -> Void)?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(with task: Task) {
        titleLabel.text = task.title
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        actionButtonDidTap?()
    }
    
}
