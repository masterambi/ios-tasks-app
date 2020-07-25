//
//  Extension+Date.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 23/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import Foundation

extension Date {
    func toString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "E, MMM d, yyyy"
        return formatter.string(from: self)
    }
    
    func toRelativeString() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        let today = Date()
        return formatter.localizedString(for: self, relativeTo: today)
    }
    
    func isOverDue() -> Bool {
        let today = Date()
        return self < today
    }
}
