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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Prevents empty cells from appearing
        scheduleTableView.tableFooterView = UIView()
        scheduleTableView.delegate = self
    }

}
