//
//  CalendarEventService.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

enum CalendarEventServiceErrors: Error {
    case invalidDate
}

public class CalendarEventService: ICalendarEventService {
    public func getEvents(forDate date: Date) -> Observable<[CalendarEventItem]> {
        // todo: replace with call to web service
        return Observable.from(optional: [
            CalendarEventItem(name: "Mock Event 1", date: date),
            CalendarEventItem(name: "Mock Event 2", date: date)
            ])
    }

    public func getEvents(forMonth month: Int, year: Int) -> Observable<[CalendarEventItem]> {
        // todo: replace with call to web service
        let comps = DateComponents(year: year, month: month)
        guard let date = Calendar.autoupdatingCurrent.date(from: comps) else { return Observable.error(CalendarEventServiceErrors.invalidDate) }
        return Observable.from(optional: [
            CalendarEventItem(name: "Mock Event 1", date: date),
            CalendarEventItem(name: "Mock Event 2", date: date)
            ])
    }
}
