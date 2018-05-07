//
//  LectureItem.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/18/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public enum MediaType {
    case audio
    case video
}

public class LectureItem {
    let lectureId: Int
    let speakerName: String
    let title: String
    let description: String
    let date: Date
    let videoUrl: String?
    let audioUrl: String?
    let mediaType: MediaType

    init (lectureId: Int, speakerName: String, title: String, description: String, date: Date, mediaType: MediaType, videoUrl: String?, audioUrl: String?) {
        self.lectureId = lectureId
        self.speakerName = speakerName
        self.title = title
        self.description = description
        self.date = date
        self.mediaType = mediaType
        self.videoUrl = videoUrl
        self.audioUrl = audioUrl
    }
}
