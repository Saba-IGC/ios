//
//  HadithItem.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/18/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class HadithItem {

    var description: String
    var source: String
    var quotee: String
    var occurenceCounter: Int = 0
    var viewCounter: Int = 0

    init (description: String, source: String, quotee: String) {
        self.description = description
        self.source = source
        self.quotee = quotee
    }
}
