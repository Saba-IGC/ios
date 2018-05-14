//
//  LectureService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/22/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public class LectureService: ILectureService {

    public func getLectures() -> Observable<[LectureItem]> {
        return Observable.from(optional: [LectureItem(lectureId: 1, speakerName: "The Lecturer", title: "Lecture 1", description: "A lecture about topic number 1", date: Date(), mediaType: .video, videoUrl: "https://www.quirksmode.org/html5/videos/big_buck_bunny.mp4", audioUrl: "audio"),
            LectureItem(lectureId: 2, speakerName: "The Lecturer", title: "Lecture 2", description: "A lecture about topic number 2, including in-depth analysis", date: Date(), mediaType: .audio, videoUrl: "video", audioUrl: "audio")])
    }

    public func getLiveStream() -> Observable<LectureItem> {
        return Observable.of(LectureItem(lectureId: 2, speakerName: "The Lecturer", title: "Lecture 1", description: "A lecture about topic number 2, including in-depth analysis", date: Date(), mediaType: .audio, videoUrl: "video", audioUrl: "audio"))
    }
}
