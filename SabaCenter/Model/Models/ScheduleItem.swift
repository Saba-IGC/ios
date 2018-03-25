//
//  ScheduleItem.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/18/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

class ScheduleItem {
    enum Importance { case normal; case high}
    var date: Date = Date()
    var description: String = ""
    var importance: Importance = .normal
}
