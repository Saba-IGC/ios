//
//  ScheduleItem.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/18/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class ScheduleItem {
    enum Importance { case normal; case high}
    var date: Date
    var description: String
    var title: String
    var importance: Importance

    init (title: String, date: Date, description: String, importance: Importance) {
        self.title = title
        self.date = date
        self.description = description
        self.importance = importance
    }
}
