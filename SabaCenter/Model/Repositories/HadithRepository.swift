//
//  HadithRepository.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/7/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class HadithRepository: IHadithRepository {

    private let hadithService: IHadithService
    private let hadithCache = [HadithItem]()

    init (hadithService: IHadithService) {
        self.hadithService = hadithService
    }

    public func getHadiths() -> [HadithItem] {
        return self.hadithService.getHadiths()
    }

    public func getHadithOfTheDay() -> HadithItem {
        return self.hadithService.getHadithOfTheDay()
    }
}
