//
//  LectureTableViewDataSource.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini Khayat on 10/13/19.
//  Copyright © 2019 Saba. All rights reserved.
//

import UIKit
import Foundation

class LectureTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {

    private var lectureCellExpanded = false
    private var previouslySelectedIndexPath: IndexPath!
    private var cellIdentifier = "LectureCell"
    var lectureItems = [LectureViewModel]()

    init(lectureItems: [LectureViewModel]?) {
        super.init()
        self.lectureItems = lectureItems ?? [LectureViewModel]()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: LectureItemCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LectureItemCell else {
            return LectureItemCell(style: .default, reuseIdentifier: cellIdentifier)
        }

        let lectureItem = self.lectureItems[indexPath.row]
        cell.tag = indexPath.row
        cell.update(lecture: lectureItem)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // First click on the table, or all the cells are compressed
        if self.previouslySelectedIndexPath == nil {
            self.lectureCellExpanded = true
            self.previouslySelectedIndexPath = indexPath
        }
            // User clicks on the cell that was already selected
        else if self.lectureCellExpanded && indexPath == self.previouslySelectedIndexPath {
            self.lectureCellExpanded = false
            self.previouslySelectedIndexPath = nil
        }
            // User clicks on another cell
        else if indexPath != self.previouslySelectedIndexPath && self.lectureCellExpanded {
            self.previouslySelectedIndexPath = indexPath
        }

        tableView.beginUpdates()
        tableView.endUpdates()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == tableView.indexPathForSelectedRow?.row {
            return self.lectureCellExpanded ? 200 : 75}

        return 75
    }

    // Todo: Let's keep this for now but later we should probably create a
    // mapping of lectures to dates and section them by date
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lectureItems.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

}
