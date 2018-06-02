//
//  IHomeRepository.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 5/27/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public protocol IHomeRepository {
    func getUpcomingEvent() -> Observable<ScheduleItem>
    func getHadithOfTheDay() -> Observable<HadithItem>
    func getZekrOfTheDay() -> String
    func getNextAzanTime() -> Date
    func getDate() -> Date
}
