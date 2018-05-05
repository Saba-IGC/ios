//
//  LectureTableDataSource.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 4/22/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit

class LectureTableDataSource: NSObject, UITableViewDataSource {
    let lectureItems: [LectureViewModel]
    let cellIdentifer = "lectureCell"
    let normalBackgroundColor = UIColor.white
    let alternateBackgroundColor = UIColor(red: 0.65, green: 0.65, blue: 0.65, alpha: 1.0)

    init(lectureItems: [LectureViewModel]) {
        self.lectureItems = lectureItems
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lectureItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer) as? LectureCell
        else {
            return LectureCell(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifer)
        }

        if indexPath.row % 2 == 1 {
            cell.backgroundColor = alternateBackgroundColor
        } else {
            cell.backgroundColor = normalBackgroundColor
        }

        cell.updateCell(lecture: lectureItems[indexPath.row])

        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
