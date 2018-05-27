//
//  ScheduleItemViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/26/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class ScheduleViewModel {

    var schedule: ScheduleItem

    init(schedule: ScheduleItem) {
        self.schedule = schedule
    }

    var description: String {
        return schedule.description
    }

    var date: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: schedule.date)
    }

    var title: String {
        return schedule.title
    }

    var importance: ScheduleItem.Importance {
        return schedule.importance
    }
}
