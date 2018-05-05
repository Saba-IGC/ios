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

class LectureViewController: UIViewControllerBase<LecturePageViewModel> {
    @IBOutlet weak var liveStreamButton: UIButton!
    @IBOutlet weak var lecturesTableView: UITableView!

    @IBAction func liveStreamButtonTouchUpInside(_ sender: UIButton) {

    }

    override func viewDidLoad() {
        setupLectureTable()

    }

    func setupLectureTable() {
        let lectureTableDataSource = LectureTableDataSource(lectureItems: (self.viewModel?.getLectureList())!)

        lecturesTableView.dataSource = lectureTableDataSource
        lecturesTableView.reloadData()

        //Prevents empty cells from appearing
        lecturesTableView.tableFooterView = nil

        //Set up a header for the table
        setupTableHeaderView()
    }

    func setupTableHeaderView() {

        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: lecturesTableView.bounds.width, height: 50))
        let headerWidth = headerView.bounds.width
        let headerHeight = headerView.bounds.height

        let lectureTitleHeader = UILabel(frame: CGRect(x: 0, y: 0, width: headerWidth / 3, height: headerHeight))

        let lectureDateHeader = UILabel(frame: CGRect(x: headerWidth / 3, y: 0, width: headerWidth / 3, height: headerHeight))

        let lectureSpeakerHeader = UILabel (frame: CGRect(x: headerWidth * 2 / 3, y: 0, width: headerWidth, height: headerHeight))

        lectureTitleHeader.text = "Title"
        lectureDateHeader.text = "Date"
        lectureSpeakerHeader.text = "Speaker"
        headerView.addSubview(lectureTitleHeader)
        headerView.addSubview(lectureDateHeader)
        headerView.addSubview(lectureSpeakerHeader)
        lecturesTableView.tableHeaderView = headerView
    }
}
