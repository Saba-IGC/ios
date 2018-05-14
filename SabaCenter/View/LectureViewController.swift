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
import RxSwift
import RxCocoa
import AVKit

class LectureViewController: UIViewControllerBase<LecturePageViewModel> {
    @IBOutlet weak var liveStreamButton: UIButton!
    @IBOutlet weak var lecturesTableView: UITableView!
    static let normalBackgroundColor = UIColor.white
    static let alternateBackgroundColor = UIColor(red: 0.65, green: 0.65, blue: 0.65, alpha: 1.0)

    @IBAction func liveStreamButtonTouchUpInside(_ sender: UIButton) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = viewModel?.getLectureList()
            .takeUntil(self.rx.deallocated)
            .bind(to: self.lecturesTableView.rx.items(cellIdentifier: "lectureCell", cellType: LectureCell.self)) { row, element, cell in
                cell.titleLabel.text = element.title
                cell.descriptionLabel.text = element.description
                cell.dateLabel.text = element.date
                cell.speakerNameLabel.text = element.speakerName

                if row % 2 == 0 {
                    cell.backgroundColor = LectureViewController.normalBackgroundColor
                } else {
                    cell.backgroundColor = LectureViewController.alternateBackgroundColor
                }
            }

        _ = self.lecturesTableView.rx.modelSelected(LectureViewModel.self)
            .takeUntil(self.rx.deallocated)
            .subscribe(onNext: { lecture in
                guard let mediaUrl = lecture.mediaUrl else {
                    NSLog("Invalid media URL")
                    return
                }

                let player = AVPlayer(url: mediaUrl)
                let playerVC = AVPlayerViewController()
                playerVC.player = player
                self.present(playerVC, animated: true)
                player.play()
            })

        // Prevents empty cells from appearing
        lecturesTableView.tableFooterView = nil
        // Set up a header for the table
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
