//
//  SchedulePageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class SchedulePageViewModel: ViewModelBase {

    let scheduleRepo: IScheduleRepository

    init(scheduleRepo: IScheduleRepository) {
        self.scheduleRepo = scheduleRepo
    }

    func getListOfScheduleItems() -> [ScheduleViewModel] {

        var scheduleItems = [ScheduleViewModel]()

        for scheduleItem in self.scheduleRepo.getScheduleItems() {
            scheduleItems.append(ScheduleViewModel(schedule: scheduleItem))
        }

        return scheduleItems
    }

    func searchSchedule() {
        //scheduleRepo.searchSchedules()
    }
}
