//
//  CalendarEventItem.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class CalendarEventItem {
    let name: String
    let date: Date

    init(name: String, date: Date) {
        self.name = name
        self.date = date
    }
}
