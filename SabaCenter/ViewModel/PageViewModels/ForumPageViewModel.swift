//
//  ForumPageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

class ForumPageViewModel : ViewModelBase, INavigatingViewModel
{
    func getListOfKeyWords () -> [String]
    {
        // Return keywords for table indexing
        return [String]
    }
    
    func getListOfQuestionTitles () -> [String]
    {
        // Return question titles for a preview on each cell
        return [String]
    }
    
    func searchQuestions () -> Int
    {
        /* Do a search for either keywords, question title, or both
        /Searching for question titles or keywords can be improved with the
        /Levenshtein distance algorithm */
    }
}
