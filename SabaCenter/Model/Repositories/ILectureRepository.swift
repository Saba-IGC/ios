//
//  ILectureRepository.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public protocol ILectureRepository {
    func getLectures() -> [LectureItem]
    func getLiveStream() -> LectureItem
    func searchLectures()
}
