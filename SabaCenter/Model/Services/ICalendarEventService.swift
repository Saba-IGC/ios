//
//  ICalendarEventService.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public protocol ICalendarEventService {
    func getEvents(forDate date: Date) -> Observable<[CalendarEventItem]>
    func getEvents(forMonth month: Int, year: Int) -> Observable<[CalendarEventItem]>
}
