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
        var lectureViewModels = [LectureViewModel]()

        for lectureItem in self.lectureRepo.getLectures() {
            lectureViewModels.append(LectureViewModel(lecture: lectureItem))
        }

        return lectureViewModels
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
