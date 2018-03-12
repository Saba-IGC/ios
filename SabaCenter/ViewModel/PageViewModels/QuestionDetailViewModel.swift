//
//  QuestionDetailViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

class QuestionDetailViewModel : ViewModelBase, INavigatingViewModel
{
    func getQuestionTitle () -> String
    {
        return "Title"
    }
    
    func getQuestionDescription () -> String
    {
        return "Description"
    }
}
