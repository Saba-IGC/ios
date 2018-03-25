//
//  ForumPageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class ForumPageViewModel: ViewModelBase {
    func getListOfKeyWords () -> [String] {
        // Return keywords for table indexing
        return []
    }

    func getListOfQuestionTitles () -> [String] {
        // Return question titles for a preview on each cell
        return []
    }

    func searchQuestions () -> Int {
        /* Do a search for either keywords, question title, or both
        /Searching for question titles or keywords can be improved with the
        /Levenshtein distance algorithm */

        return 0
    }
}
