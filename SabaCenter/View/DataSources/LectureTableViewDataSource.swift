//
//  LectureTableViewDataSource.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini Khayat on 10/13/19.
//  Copyright © 2019 Saba. All rights reserved.
//

import UIKit

class LectureTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {

    static let normalBackgroundColor = UIColor.white
    static let alternateBackgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.0)
    private var lectureCellExpanded = false
    private var previouslySelectedIndexPath: IndexPath!
    private var cellIdentifier = "LectureCellIdentifier"
    var lectureItems = [LectureViewModel]()

    init(lectureItems: [LectureViewModel]?) {
        self.lectureItems = lectureItems ?? [LectureViewModel]()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: LectureCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? LectureCell else {
            return LectureCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //First click on the table, or all the cells are compressed
        if previouslySelectedIndexPath == nil {
            lectureCellExpanded = true
            previouslySelectedIndexPath = indexPath
        }
            //User clicks on the cell that was already selected
        else if lectureCellExpanded && indexPath == previouslySelectedIndexPath {
            lectureCellExpanded = false
            previouslySelectedIndexPath = nil
        }
            //User clicks on another cell
        else if indexPath != previouslySelectedIndexPath  && lectureCellExpanded {
            previouslySelectedIndexPath = indexPath
        }

        tableView.beginUpdates()
        tableView.endUpdates()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == tableView.indexPathForSelectedRow?.row {
            return lectureCellExpanded ? 200 : 75}

        return 75
    }

    // Let's keep this for now but later we should probably create a
    // mapping of lectures to dates and section them by date
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lectureItems.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

}
