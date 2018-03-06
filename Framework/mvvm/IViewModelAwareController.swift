//
//  ViewModelAware.swift
//  Framework
//
//  Created by Ali Hosseini Khayat on 3/4/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

internal protocol IViewModelAwareController: class {
    var viewModelBase: ViewModelBase? { get }
}
