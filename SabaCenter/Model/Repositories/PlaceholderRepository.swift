//
//  PlaceholderRepository.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/3/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation

public class PlaceholderRepository: IPlaceholderRepository {
    let placeholderService: IPlaceholderService

    init(placeholderService: IPlaceholderService) {
        self.placeholderService = placeholderService
    }

    public func placeholder() {
        placeholderService.placeholder()
    }
}
