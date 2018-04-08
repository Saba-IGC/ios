//
//  HadithService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/7/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public class HadithService: IHadithService {

    public func getHadiths() -> Observable<[HadithItem]> {
        // todo: replace with call to web service
        return Observable.from(optional: [
            HadithItem(description: "Be like the flower that gives its fragrance to even the hand that crushes it", source: "Reputable source", quotee: "Imam Ali (s)")])
    }

    public func getHadithOfTheDay() -> HadithItem {
        return HadithItem(description: "Be like the flower that gives its fragrance to even the hand that crushes it", source: "Reputable source", quotee: "Imam Ali (s)")
    }
}
