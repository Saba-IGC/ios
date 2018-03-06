//
//  DetailPageViewModel.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/5/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class DetailPageViewModel: ViewModelBase, INavigatingViewModel {
    let navigationService: INavigationService

    init(navigationService: INavigationService) {
        self.navigationService = navigationService
    }

    func testNavigate() {
        do {
            try self.navigationService.navigate(to: "placeholderSegue", withParameter: "placeholderParameter")
        } catch {
            print("Failed to navigate")
        }
    }
}
