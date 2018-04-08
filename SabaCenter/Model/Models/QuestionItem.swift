//
//  QuestionItem.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/18/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

class QuestionItem {
    var title: String
    var description: String
    var answer: String
    var keyWords: [String]

    init (title: String, description: String, answer: String, keyWords: [String]) {
        self.title = title
        self.description = description
        self.answer = answer
        self.keyWords = keyWords
    }
}
