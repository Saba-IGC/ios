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

class ScheduleViewController: UIViewControllerBase<SchedulePageViewModel> {
    @IBOutlet var scheduleTableView: UITableView!
    static let normalBackgroundColor = UIColor.white
    static let alternateBackgroundColor = UIColor(red: 0.65, green: 0.65, blue: 0.65, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = viewModel?.getListOfScheduleItems()
            .takeUntil(self.rx.deallocated)
            .bind(to: self.scheduleTableView.rx.items(cellIdentifier: "scheduleItemCell", cellType: ScheduleItemCell.self)) { row, element, cell in
                cell.textLabel?.text = element.title
                cell.detailTextLabel?.text = element.description

                if row % 2 == 0 {
                    cell.backgroundColor = ScheduleViewController.normalBackgroundColor
                } else {
                    cell.backgroundColor = ScheduleViewController.alternateBackgroundColor
                }
        }

        _ = self.scheduleTableView.rx.modelSelected(ScheduleViewModel.self)
            .takeUntil(self.rx.deallocated)
            .subscribe(onNext: { schedule in
                _ = schedule.title
                    return
            })

        // Prevents empty cells from appearing
        scheduleTableView.tableFooterView = nil
    }
}
