//
//  HadithService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/7/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class HadithService: IHadithService {

    public func getHadiths() -> [HadithItem] {
        // todo: replace with call to web service
        return [HadithItem(description: "Be like the flower that gives its fragrance to even the hand that crushes it", source: "Reputable source", quotee: "Imam Ali (s)")]
    }

    public func getHadithOfTheDay() -> HadithItem {
        return HadithItem(description: "Be like the flower that gives its fragrance to even the hand that crushes it", source: "Reputable source", quotee: "Imam Ali (s)")
    }
}
