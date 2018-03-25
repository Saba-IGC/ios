//
//  AskPageViewModel.swift
//  SabaCenter
//
//  Created by Mohsen Hosseini on 3/11/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class AskPageViewModel: ViewModelBase {
    func submitQuestion () {
        /*
         - break down the question into whatever parameters the website is         looking for
         - Submit question to the website
         */
    }

    func getListOfKeyWords () -> [String] {
        /*
            - Get a list of keywords, probably composed of the keywords on the site and some more
            - return the list
        */

        return []
    }

    func addANewKeyWord () {
        /*
            - If theres a new keyword that the user added,
            (we dont have it in the list)
            send it to the webservice for someone
            to determine whether it warrants its own keyword
        */
    }
}
