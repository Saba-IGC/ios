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
        return Observable.from(optional: [LectureItem(speakerName: "The Lecturer", title: "Lecture 1", description: "A lecture about topic number 1", date: Date(), videoUrl: "video", audioUrl: "audio")])
    }

    public func getLiveStream() -> Observable<LectureItem> {
        return Observable.of(LectureItem(speakerName: "The Lecturer", title: "Lecture 1", description: "A lecture about topic number 2, including in-depth analysis", date: Date(), videoUrl: "video", audioUrl: "audio"))
    }
}
