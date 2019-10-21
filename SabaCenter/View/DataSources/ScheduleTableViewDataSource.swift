//
//  ScheduleTableViewDataSource.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini Khayat on 10/13/19.
//  Copyright © 2019 Saba. All rights reserved.
//

import UIKit
import Foundation

class ScheduleTableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {

    private var scheduleCellExpanded = false
    private var previouslySelectedIndexPath: IndexPath!
    private let cellIdentifier = "ScheduleCell"
    var scheduleItems = [ScheduleViewModel]()

    init(scheduleItems: [ScheduleViewModel]?) {
        super.init()
        self.scheduleItems = scheduleItems ?? [ScheduleViewModel]()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: ScheduleItemCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? ScheduleItemCell else {
            return ScheduleItemCell(style: .default, reuseIdentifier: cellIdentifier)
        }

        let scheduleItem = self.scheduleItems[indexPath.row]
        cell.tag = indexPath.row
        cell.update(schedule: scheduleItem)

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // First click on the table, or all the cells are compressed
        if self.previouslySelectedIndexPath == nil {
            self.scheduleCellExpanded = true
            self.previouslySelectedIndexPath = indexPath
        }
            // User clicks on the cell that was already selected
        else if self.scheduleCellExpanded && indexPath == self.previouslySelectedIndexPath {
            self.scheduleCellExpanded = false
           self.previouslySelectedIndexPath = nil
        }
            // User clicks on another cell
        else if indexPath != self.previouslySelectedIndexPath  && self.scheduleCellExpanded {
            self.previouslySelectedIndexPath = indexPath
        }

        tableView.beginUpdates()
        tableView.endUpdates()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == tableView.indexPathForSelectedRow?.row {
            return self.scheduleCellExpanded ? 125 : 50 }

        return 50
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.scheduleItems.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
