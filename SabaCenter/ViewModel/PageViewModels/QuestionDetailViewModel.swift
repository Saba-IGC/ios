//
//  QuestionDetailPageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

class QuestionDetailPageViewModel : ViewModelBase, INavigatingViewModel
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
