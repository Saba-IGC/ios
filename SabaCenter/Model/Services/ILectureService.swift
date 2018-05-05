//
//  ILectureService.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/22/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public protocol ILectureService {
    func getLectures() -> Observable<[LectureItem]>
    func getLiveStream() -> Observable<LectureItem>
}
