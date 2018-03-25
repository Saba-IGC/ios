//
//  CalendarEventRepository.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public class CalendarEventRepository: ICalendarEventRepository {
    private let calendarEventService: ICalendarEventService
    private let dateEventsCache = [Date: [CalendarEventItem]]()
    private let monthEventsCache = [DateComponents: [CalendarEventItem]]()

    init(calendarEventService: ICalendarEventService) {
        self.calendarEventService = calendarEventService
    }

    public func getEvents(forDate date: Date) -> Observable<[CalendarEventItem]> {
        if let events = dateEventsCache[date] {
            return Observable.from(optional: events)
        } else {
            return self.calendarEventService.getEvents(forDate: date)
        }
    }

    public func getEvents(forMonth month: Int, year: Int) -> Observable<[CalendarEventItem]> {
        var comps = DateComponents()
        comps.month = month
        comps.year = year
        if let events = monthEventsCache[comps] {
            return Observable.from(optional: events)
        } else {
            return self.calendarEventService.getEvents(forMonth: month, year: year)
        }
    }
}
