//
//  HadithViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/7/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class HadithViewModel {

    var hadith: HadithItem

    var description: String {
        return hadith.description
    }

    var source: String {
        return hadith.source
    }

    var quotee: String {
        return hadith.quotee
    }

    init (hadith: HadithItem) {
        self.hadith = hadith
    }
}
