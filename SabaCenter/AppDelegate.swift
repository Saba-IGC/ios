//
//  AppDelegate.swift
//  SabaCenter
//
//  Created by Ali Hosseini Khayat on 3/3/18.
//  Copyright © 2018 Saba. All rights reserved.
//

import UIKit
import Framework
import Swinject
import SuperDelegate

@UIApplicationMain
class AppDelegate: SuperDelegate, ApplicationLaunched {
    var window: UIWindow?

    let container: Container = {
        let container = Container()
        container.register(IPlaceholderService.self) { _ in PlaceholderService()}.inObjectScope(.container)
        container.register(IPlaceholderRepository.self) { resolver in PlaceholderRepository(placeholderService: resolver.resolve(IPlaceholderService.self)!)}.inObjectScope(.container)
        container.register(INavigationService.self) { _ in NavigationService()}.inObjectScope(.container)
        container.register(MainPageViewModel.self) { resolver in MainPageViewModel(placeholderRepo: resolver.resolve(IPlaceholderRepository.self)!, navigationService: resolver.resolve(INavigationService.self)!) }
        container.register(DetailPageViewModel.self) { resolver in DetailPageViewModel(navigationService: resolver.resolve(INavigationService.self)!) }
        container.register(NavigateTestPageViewModel.self) { _ in NavigateTestPageViewModel() }
        return container
    }()

    override init() {
        super.init()
        ViewModelFactory.resolver = self
    }

    func setupApplication() {
        // Setup app model, networking, logging, etc.
    }

    func loadInterface(launchItem: LaunchItem) {
        // Override point for customization after application launch.
    }
}

extension AppDelegate: ITypeResolver {
    func resolve<T>() -> T? {
        return container.resolve(T.self)
    }
}
