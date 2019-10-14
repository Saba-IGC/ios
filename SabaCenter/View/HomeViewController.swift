//
//  HomeViewController.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/10/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import UIKit
import Framework

class HomeViewController: UIViewControllerBase<HomePageViewModel> {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var duaLabel: UILabel!
    @IBOutlet weak var triviaLabel: UILabel!

    override func viewDidLoad() {
        self.dateLabel.text = viewModel?.getDate()
        self.duaLabel.text = viewModel?.getZekrOfTheDay()
        self.countDownLabel.text = viewModel?.getTimeTillNextAzan()
        self.triviaLabel.text = viewModel?.getHadithOfTheDay()
        self.eventLabel.text = viewModel?.getUpcomingEvent()
    }
}
