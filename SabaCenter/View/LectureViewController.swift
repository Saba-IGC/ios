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

class LectureViewController: UIViewControllerBase<LecturePageViewModel>, UITableViewDelegate {
    @IBOutlet weak var liveStreamButton: UIButton!
    @IBOutlet weak var lecturesTableView: UITableView!
    static let normalBackgroundColor = UIColor.white
    static let alternateBackgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.0)
    private var lectureCellExpanded = false
    private var previouslySelectedIndexPath: IndexPath!

    @IBAction func liveStreamButtonTouchUpInside(_ sender: UIButton) {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = viewModel?.getLectureList()
            .takeUntil(self.rx.deallocated)
            .bind(to: self.lecturesTableView.rx.items(cellIdentifier: "lectureCell", cellType: LectureCell.self)) { row, element, cell in
                cell.updateCell(lecture: element)

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

                //Bind it to the cell video button
                /*let player = AVPlayer(url: mediaUrl)
                let playerVC = AVPlayerViewController()
                playerVC.player = player
                self.present(playerVC, animated: true)
                player.play()*/
            })

        // Prevents empty cells from appearing
        lecturesTableView.tableFooterView = UIView()
        lecturesTableView.delegate = self
        // Set up a header for the table
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //First click on the table, or all the cells are compressed
        if previouslySelectedIndexPath == nil {
            lectureCellExpanded = true
            previouslySelectedIndexPath = indexPath
        }
        //User clicks on the cell that was already selected
       else if lectureCellExpanded && indexPath == previouslySelectedIndexPath {
            lectureCellExpanded = false
            previouslySelectedIndexPath = nil
        }
       //User clicks on another cell
       else if indexPath != previouslySelectedIndexPath  && lectureCellExpanded {
            previouslySelectedIndexPath = indexPath
        }

        tableView.beginUpdates()
        tableView.endUpdates()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == tableView.indexPathForSelectedRow?.row {
            return lectureCellExpanded ? 200 : 75}

        return 75
    }
}
