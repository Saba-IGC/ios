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

    func getDate () -> String {
        return "Sunday, March 11, 2018, 22 Jamadilakhir, 1439H"
    }

    func getTimeTillNextAzan () -> String {
        return "4:31:24s"
    }

    func getHadithOfTheDay () -> String {
        return "Be like the flower that gives its fragrance to even the hand that crushes it - Imam Ali (s)"
    }

    func getZekrOfTheDay () -> String {
        return "ياذاالجلال و الاكرام"
    }

    func getFactOfTheDay () -> String {
        return "Did you know: Insert fact here?!?"
    }
}
