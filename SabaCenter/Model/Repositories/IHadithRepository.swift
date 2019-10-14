//
//  IHadithRepository.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/7/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public protocol IHadithRepository {
    func getHadiths() -> [HadithItem]
    func getHadithOfTheDay() -> HadithItem
}
