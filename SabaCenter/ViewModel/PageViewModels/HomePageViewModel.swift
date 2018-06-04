//
//  HomePageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class HomePageViewModel: ViewModelBase {

    let hadithRepo: IHadithRepository
    let scheduleRepo: IScheduleRepository

    init(hadithRepo: IHadithRepository, scheduleRepo: IScheduleRepository) {
        self.hadithRepo = hadithRepo
        self.scheduleRepo = scheduleRepo
    }

    func getDate () -> String {
        return "Sunday, March 11, 2018, 22 Jamadilakhir, 1439H"
    }

    func getTimeTillNextAzan () -> String {
        return "4:31:24s"
    }

    func getHadithOfTheDay () -> String {
        //return hadithRepo.getHadithOfTheDay()
        return "Be like the flower that gives its fragrance to even the hand that crushes it - Imam Ali (s)"
    }

    func getZekrOfTheDay () -> String {
        return "ياذاالجلال و الاكرام"
    }

    /*func getFactOfTheDay () -> String {
        return "Did you know: Insert fact here?!?"
    }*/

    func getUpcomingEvent () -> String {
        //return scheduleRepo.getUpcomingScheduleItem()
        return "Dua Kumeyl"
    }
}
