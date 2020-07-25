//
//  Task.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 22/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import Foundation
import FirebaseFirestoreSwift

struct Task: Identifiable, Codable {
    @DocumentID var id: String?
    @ServerTimestamp var createdAt: Date?
    let title: String
    var isDone: Bool = false
    var doneAt: Date?
    var deadline: Date?
    let uid: String
}
