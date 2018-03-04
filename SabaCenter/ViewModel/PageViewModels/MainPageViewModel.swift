//
//  MainPageViewModel.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/3/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework

class MainPageViewModel: ViewModelBase {
    let placeholderRepo: IPlaceholderRepository;

    init(placeholderRepo: IPlaceholderRepository) {
        self.placeholderRepo = placeholderRepo;
    }

    func placeholder() -> Void {
        placeholderRepo.placeholder();
    }
}
