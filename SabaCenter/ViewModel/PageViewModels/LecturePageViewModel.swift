//
//  LecturePageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework
import RxSwift

class LecturePageViewModel: ViewModelBase {
    let lectureRepo: ILectureRepository

    init(lectureRepo: ILectureRepository) {
        self.lectureRepo = lectureRepo
    }

    func getLectureList() -> Observable<[LectureViewModel]> {
        return self.lectureRepo.getLectures().map { lectures in
            return lectures.map { item in
                return LectureViewModel(lecture: item)
            }
        }
    }

    func getLinkToLiveStream() -> String {
        return "Link to youtube live stream"
    }

    func sortLecturesBy(sortParameter: String) {
        switch sortParameter {
        default:
            return
        }
    }

    func searchLectures(searchInput: String) -> Int {
        /*
         Take a look at:
         - Titles
         - Speakers
         */

        return 0
    }
}
