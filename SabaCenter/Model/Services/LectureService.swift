//
//  LectureService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/22/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class LectureService: ILectureService {

    public func getLectures() -> [LectureItem] {

        return [LectureItem(lectureId: 1, speakerName: "The Lecturer", title: "Lecture 1", description: "A lecture about topic number 1", date: Date(), mediaType: .video, videoUrl: "https://www.quirksmode.org/html5/videos/big_buck_bunny.mp4", audioUrl: "audio"),
            LectureItem(lectureId: 2, speakerName: "The Lecturer", title: "Lecture 2", description: "A lecture about topic number 2, including in-depth analysis", date: Date.init(timeIntervalSinceNow: 3600), mediaType: .audio, videoUrl: "video", audioUrl: "audio")]
    }

    public func getLiveStream() -> LectureItem {
        return LectureItem(lectureId: 2, speakerName: "The Lecturer", title: "Lecture 1", description: "A lecture about topic number 2, including in-depth analysis", date: Date(), mediaType: .audio, videoUrl: "video", audioUrl: "audio")
    }
}
