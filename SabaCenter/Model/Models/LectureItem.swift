//
//  LectureItem.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/18/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class LectureItem {
    var speakerName: String
    var title: String
    var description: String
    var date: Date
    var videoUrl: String
    var audioUrl: String

    init (speakerName: String, title: String, description: String, date: Date, videoUrl: String, audioUrl: String) {
        self.speakerName = speakerName
        self.title = title
        self.description = description
        self.date = date
        self.videoUrl = videoUrl
        self.audioUrl = audioUrl
    }
}
