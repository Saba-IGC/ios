//
//  ScheduleTableViewDataSource.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini Khayat on 10/13/19.
//  Copyright © 2019 Saba. All rights reserved.
//

import UIKit

class ScheduleTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {

    let normalBackgroundColor = UIColor.white
    let alternateBackgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.0)
    private var scheduleCellExpanded = false
    private var previouslySelectedIndexPath: IndexPath!
    private let cellIdentifier = "ScheduleCellIdentifier"
    var scheduleItems = [ScheduleItem]()

    init(scheduleItems: [ScheduleItem]) {
        self.scheduleItems = scheduleItems
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else {
            return ScheduleItemCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        let row = indexPath.row

        if row % 2 == 0 {
            cell.backgroundColor = normalBackgroundColor
        } else {
            cell.backgroundColor = alternateBackgroundColor
        }

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //First click on the table, or all the cells are compressed
        if previouslySelectedIndexPath == nil {
            scheduleCellExpanded = true
            previouslySelectedIndexPath = indexPath
        }
            //User clicks on the cell that was already selected
        else if scheduleCellExpanded && indexPath == previouslySelectedIndexPath {
            scheduleCellExpanded = false
            previouslySelectedIndexPath = nil
        }
            //User clicks on another cell
        else if indexPath != previouslySelectedIndexPath  && scheduleCellExpanded {
            previouslySelectedIndexPath = indexPath
        }

        tableView.beginUpdates()
        tableView.endUpdates()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == tableView.indexPathForSelectedRow?.row {
            return scheduleCellExpanded ? 125 : 50 }

        return 50
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scheduleItems.count
    }
}
