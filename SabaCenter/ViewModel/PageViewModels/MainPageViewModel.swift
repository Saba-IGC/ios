//
//  MainPageViewModel.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/3/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class MainPageViewModel: ViewModelBase, INavigatingViewModel {
    let navigationService: INavigationService
    let placeholderRepo: IPlaceholderRepository

    init(placeholderRepo: IPlaceholderRepository, navigationService: INavigationService) {
        self.placeholderRepo = placeholderRepo
        self.navigationService = navigationService
    }

    func placeholder() {
        placeholderRepo.placeholder()
    }
}
