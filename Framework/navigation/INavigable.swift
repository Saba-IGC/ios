//
//  INavigable.swift
//  Framework
//
//  Created by Ali Hosseini Khayat on 3/4/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public protocol INavigable: class {
    func navigate(to pageToken: String, withParameter parameter: Any?)
}
