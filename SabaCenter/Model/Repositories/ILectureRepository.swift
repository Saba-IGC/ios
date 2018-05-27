//
//  ILectureRepository.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/24/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import RxSwift

public protocol ILectureRepository {
    func getLectures() -> Observable<[LectureItem]>
    func getLiveStream() -> Observable<LectureItem>
    func searchLectures()
}
