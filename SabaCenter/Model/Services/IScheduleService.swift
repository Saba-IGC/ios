//
//  IScheduleService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/26/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public protocol IScheduleService {
    func getScheduleItems() -> [ScheduleItem]
    func getUpcomingScheduleItem() -> ScheduleItem
}
