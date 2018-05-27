//
//  ScheduleRepository.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/26/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public class ScheduleRepository: IScheduleRepository {

    private let scheduleService: IScheduleService
    private let scheduleCache = [ScheduleItem]()

    init(scheduleService: IScheduleService) {
        self.scheduleService = scheduleService
    }

    public func getScheduleItems() -> Observable<[ScheduleItem]> {
        return scheduleService.getScheduleItems()
    }

    public func getUpcomingScheduleItem() -> Observable<ScheduleItem> {
        return scheduleService.getUpcomingScheduleItem()
    }

    public func searchSchedule(searchParameter: String) {
        return
    }

}
