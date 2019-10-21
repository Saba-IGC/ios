//
//  ScheduleViewController.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/10/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit
import Framework

class ScheduleViewController: UIViewControllerBase<SchedulePageViewModel>, UITableViewDelegate {
    @IBOutlet var scheduleTableView: UITableView!
    var scheduleTableViewDataSource: ScheduleTableViewDataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {

        let scheduleItems = viewModel?.getListOfScheduleItems()
        self.scheduleTableViewDataSource = ScheduleTableViewDataSource(scheduleItems: scheduleItems)

        scheduleTableView.dataSource = scheduleTableViewDataSource
        scheduleTableView.delegate = scheduleTableViewDataSource
        scheduleTableView.reloadData()
    }

}
