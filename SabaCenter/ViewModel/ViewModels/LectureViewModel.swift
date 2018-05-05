//
//  LectureViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/7/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class LectureViewModel {
    var lecture: LectureItem

    var title: String {
        return lecture.title
    }

    var description: String {
        return lecture.description
    }

    var date: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.string(from: lecture.date)
    }

    var speakerName: String {
        return lecture.speakerName
    }

    init (lecture: LectureItem) {
        self.lecture = lecture
    }
}
