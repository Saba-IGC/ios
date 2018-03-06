//
//  NavigateTestViewController.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/6/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import UIKit
import Framework
import RxSwift
import RxCocoa

class NavigateTestViewController: UIViewControllerBase<NavigateTestPageViewModel> {
    @IBOutlet weak var parameterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = viewModel?.displayTextObservable
            .takeUntil(self.rx.deallocated)
            .bind(to: self.parameterLabel.rx.text)
    }
}
