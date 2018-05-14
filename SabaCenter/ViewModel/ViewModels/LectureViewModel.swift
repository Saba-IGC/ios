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

    init (lecture: LectureItem) {
        self.lecture = lecture
    }

    var lectureId: Int {
        return lecture.lectureId
    }

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

    var mediaType: MediaType {
        return lecture.mediaType
    }

    var mediaUrl: URL? {
        switch self.mediaType {
        case .audio:
            guard let url = self.lecture.audioUrl else {
                NSLog("Invalid audio url")
                return nil
            }
            return URL(string: url)
        case .video:
            guard let url = self.lecture.videoUrl else {
                NSLog("Invalid video url")
                return nil
            }
            return URL(string: url)
        }
    }
}
