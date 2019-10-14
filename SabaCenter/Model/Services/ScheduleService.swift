//
//  ScheduleService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/26/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class ScheduleService: IScheduleService {
    public func getScheduleItems() -> [ScheduleItem] {
        return [ScheduleItem(title: "Item1", date: Date(timeIntervalSinceNow: 3600), description: "Doing stuff", importance: ScheduleItem.Importance.normal), ScheduleItem(title: "Item2", date: Date(timeIntervalSinceNow: 7200), description: "Doing some more stuff", importance: ScheduleItem.Importance.high)]
    }

    public func getUpcomingScheduleItem() -> ScheduleItem {
        return ScheduleItem(title: "Item1", date: Date(timeIntervalSinceNow: 1800), description: "Doing less stuff", importance: ScheduleItem.Importance.normal)
    }
}
