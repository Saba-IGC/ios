//
//  IScheduleRepository.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/26/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public protocol IScheduleRepository {
    func getScheduleItems() -> [ScheduleItem]
    func getUpcomingScheduleItem() -> ScheduleItem
    func searchSchedule(searchParameter: String)
}
