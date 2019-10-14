//
//  LectureViewController.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/10/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit
import Framework
import AVKit

class LectureViewController: UIViewControllerBase<LecturePageViewModel>, UITableViewDelegate {
    @IBOutlet weak var liveStreamButton: UIButton!
    @IBOutlet weak var lecturesTableView: UITableView!

    @IBAction func liveStreamButtonTouchUpInside(_ sender: UIButton) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Prevents empty cells from appearing
        lecturesTableView.tableFooterView = UIView()

        let lectureItems = viewModel?.getLectureList()
        let lectureTableViewDataSource = LectureTableViewDataSource(lectureItems: lectureItems)
        lecturesTableView.dataSource = lectureTableViewDataSource
        lecturesTableView.delegate = lectureTableViewDataSource
    }

}
