//
//  LecturePageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

class LecturePageViewModel : ViewModelBase, INavigatingViewModel
{
    func getLectureList ()
    {
        /*
         Lecture items should probably have:
         - Date
         - Speaker
         - Title
         */
    }
    
    func getLinkToLiveStream () -> String
    {
        return "Link to youtube live stream"
    }
    
    func sortLecturesBy (sortParameter: String)
    {
        switch (sortParameter)
        {
            default:
                return;
        }
    }
    
    func searchLectures (searchInput: String) -> Int
    {
        /*
         Take a look at:
            - Titles
            - Speakers
        */
    }
}
