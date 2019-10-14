//
//  CalendarEventRepository.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class CalendarEventRepository: ICalendarEventRepository {
    private let calendarEventService: ICalendarEventService
    private let dateEventsCache = [Date: [CalendarEventItem]]()
    private let monthEventsCache = [DateComponents: [CalendarEventItem]]()

    init(calendarEventService: ICalendarEventService) {
        self.calendarEventService = calendarEventService
    }

    public func getEvents(forDate date: Date) -> [CalendarEventItem] {
        if let events = dateEventsCache[date] {
            return events
        } else {
            return self.calendarEventService.getEvents(forDate: date)
        }
    }

    public func getEvents(forMonth month: Int, year: Int) throws -> [CalendarEventItem] {
        var comps = DateComponents()
        comps.month = month
        comps.year = year

        if let events = monthEventsCache[comps] {
            return events
        } else {
            return try self.calendarEventService.getEvents(forMonth: month, year: year)
        }

    }
}
