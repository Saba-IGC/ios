//
//  SchedulePageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework
import RxSwift

class SchedulePageViewModel: ViewModelBase {

    let scheduleRepo: IScheduleRepository

    init(scheduleRepo: IScheduleRepository) {
        self.scheduleRepo = scheduleRepo
    }

    func getListOfScheduleItems() -> Observable<[ScheduleViewModel]> {

        return self.scheduleRepo.getScheduleItems().map { schedules in
            return schedules.map { item in
                return ScheduleViewModel(schedule: item)
            }
        }
    }

    func searchSchedule() {

        //scheduleRepo.searchSchedules()
    }
}
