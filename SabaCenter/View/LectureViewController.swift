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

class LectureViewController: UIViewControllerBase<LecturePageViewModel> {
    @IBOutlet weak var liveStreamButton: UIButton!
    @IBOutlet weak var lecturesTableView: UITableView!
    var lectureTableViewDataSource: LectureTableViewDataSource!

    @IBAction func liveStreamButtonTouchUpInside(_ sender: UIButton) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {

        let lectureItems = viewModel?.getLectureList()
        self.lectureTableViewDataSource = LectureTableViewDataSource(lectureItems: lectureItems)

        self.lecturesTableView.dataSource = self.lectureTableViewDataSource
        self.lecturesTableView.delegate = self.lectureTableViewDataSource
        self.lecturesTableView.reloadData()
    }

}
