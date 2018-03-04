//
//  UIViewControllerExtensions.swift
//  framework
//
//  Created by Ali Hosseini Khayat on 1/28/18.
//  Copyright © 2018 Ali Hosseini Khayat. All rights reserved.
//

import UIKit

open class UIViewControllerBase<TViewModel : ViewModelBase> : UIViewController {
    public let viewModel : TViewModel? = {
        return ViewModelFactory.resolveViewModel()
    }()
}
