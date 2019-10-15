//
//  LecturePageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class LecturePageViewModel: ViewModelBase {
    let lectureRepo: ILectureRepository

    init(lectureRepo: ILectureRepository) {
        self.lectureRepo = lectureRepo
    }

    func getLectureList() -> [LectureViewModel] {
        let lectureList = self.lectureRepo.getLectures().map { item in LectureViewModel(lecture: item) }

        return lectureList
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

        //lectureRepo.searchLectures()
        return 0
    }
}
