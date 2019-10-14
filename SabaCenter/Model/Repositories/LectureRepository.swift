//
//  LectureRepository.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/22/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class LectureRepository: ILectureRepository {
    private let lectureService: ILectureService
    private let lectureCache = [LectureItem]()

    init(lectureService: ILectureService) {
        self.lectureService = lectureService
    }

    public func getLectures() -> [LectureItem] {
        return lectureService.getLectures()
    }

    public func getLiveStream() -> LectureItem {
        return lectureService.getLiveStream()
    }

    public func searchLectures() {
        return
    }
}
