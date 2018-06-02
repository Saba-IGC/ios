//
//  HomeRepository.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/27/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public class HomeRepository: IHomeRepository {

    private let scheduleService: IScheduleService
    private let scheduleCache = [ScheduleItem]()
    private let hadithService: IHadithService
    private let hadithCache = [HadithItem]()

    init(scheduleService: IScheduleService, hadithService: IHadithService) {
        self.scheduleService = scheduleService
        self.hadithService = hadithService
    }
    public func getUpcomingEvent() -> Observable<ScheduleItem> {
        return self.scheduleService.getUpcomingScheduleItem()
    }

    public func getHadithOfTheDay() -> Observable<HadithItem> {
        return self.hadithService.getHadithOfTheDay()
    }

    public func getZekrOfTheDay() -> String {
        return "Zekr"
    }

    public func getNextAzanTime() -> Date {
        //Temporary
        return Date()
    }

    public func getDate() -> Date {
        return Date()
    }
}
