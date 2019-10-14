//
//  ICalendarEventRepository.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public protocol ICalendarEventRepository {
    func getEvents(forDate date: Date) -> [CalendarEventItem]
    func getEvents(forMonth month: Int, year: Int) throws -> [CalendarEventItem]
}
