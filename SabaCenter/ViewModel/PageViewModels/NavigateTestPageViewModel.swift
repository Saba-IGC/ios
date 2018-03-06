//
//  NavigateTestPageViewModel.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/5/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import Foundation
import Framework
import RxSwift
import RxCocoa

class NavigateTestPageViewModel: ViewModelBase, INavigationAwareViewModel {
    // Use BehaviorRelay to ensure any observer always gets the latest value at least once
    private let displayTextSubject: BehaviorRelay<String> = BehaviorRelay(value: "")
    var displayTextObservable: Observable<String> {
        return displayTextSubject.asObservable()
    }

    func onNavigatedTo(withParameter parameter: Any?) {
        if let displayText = parameter as? String {
            displayTextSubject.accept(displayText)
        }
    }
}
