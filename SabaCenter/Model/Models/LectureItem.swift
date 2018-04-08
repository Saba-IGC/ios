//
//  LectureItem.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/18/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

class LectureItem {
    var lecturerName: String
    var title: String
    var date: Date
    var videoUrl: String
    var audioUrl: String

    init (lecturerName: String, title: String, date: Date, videoUrl: String, audioUrl: String) {
        self.lecturerName = lecturerName
        self.title = title
        self.date = date
        self.videoUrl = videoUrl
        self.audioUrl = audioUrl
    }
}
