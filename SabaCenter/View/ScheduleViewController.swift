//
//  ScheduleViewController.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/10/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
import Framework

class ScheduleViewController: UIViewControllerBase<SchedulePageViewModel>, UITableViewDelegate {
    @IBOutlet var scheduleTableView: UITableView!
    static let normalBackgroundColor = UIColor.white
    static let alternateBackgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.0)
    private var scheduleCellExpanded = false
    private var previouslySelectedIndexPath: IndexPath!

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = viewModel?.getListOfScheduleItems()
            .takeUntil(self.rx.deallocated)
            .bind(to: self.scheduleTableView.rx.items(cellIdentifier: "scheduleItemCell", cellType: ScheduleItemCell.self)) { row, element, cell in
                cell.updateCell(schedule: element)

                if row % 2 == 0 {
                    cell.backgroundColor = ScheduleViewController.normalBackgroundColor
                } else {
                    cell.backgroundColor = ScheduleViewController.alternateBackgroundColor
                }
        }

        // Prevents empty cells from appearing
        scheduleTableView.tableFooterView = UIView()
        scheduleTableView.delegate = self
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
}
