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

        let scheduleItems = self.scheduleRepo.getScheduleItems().map { item in
            ScheduleViewModel(schedule: item)
        }

        return scheduleItems
    }

    func searchSchedule() {
        //scheduleRepo.searchSchedules()
    }
}
