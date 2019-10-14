//
//  ILectureService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/22/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
public protocol ILectureService {
    func getLectures() -> [LectureItem]
    func getLiveStream() -> LectureItem
}
