//
//  UITableViewControllerBase.swift
//  Framework
//
//  Created by Ali Hosseini Khayat on 3/3/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import UIKit

open class UITableViewControllerBase<TViewModel: ViewModelBase>: UITableViewController {
    public let viewModel: TViewModel? = {
        return ViewModelFactory.resolveViewModel()
    }()
}
