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
        // swiftlint:disable force_cast
        let splitViewController = window!.rootViewController as! UISplitViewController
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
        // swiftlint:enable force_cast
        navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
        splitViewController.delegate = self
    }
}

extension AppDelegate: UISplitViewControllerDelegate {
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
        if topAsDetailController.detailItem == nil {
            // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
            return true
        }
        return false
    }
}

extension AppDelegate: ITypeResolver {
    func resolve<T>() -> T? {
        return container.resolve(T.self)
    }
}
