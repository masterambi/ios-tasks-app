//
//  CalendarViewDelegate.swift
//  ios-tasks-app
//
//  Created by Ramzy Rashaun Arief on 23/07/20.
//  Copyright © 2020 Ramzy Rashaun Arief. All rights reserved.
//

import Foundation

protocol CalendarViewDelegate: class {
    func calendarViewDidSelectDate(date: Date)
    func calendarViewDidTapRemoveButton()
}
