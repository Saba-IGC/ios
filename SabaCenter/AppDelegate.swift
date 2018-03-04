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

    let container : Container = {
        let container = Container();
        container.register(IPlaceholderService.self) { _ in PlaceholderService()}
        container.register(IPlaceholderRepository.self) { r in PlaceholderRepository(placeholderService: r.resolve(IPlaceholderService.self)!)}
        container.register(MainPageViewModel.self) { r in MainPageViewModel(placeholderRepo: r.resolve(IPlaceholderRepository.self)!) }
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
        let splitViewController = window!.rootViewController as! UISplitViewController
        let navigationController = splitViewController.viewControllers[splitViewController.viewControllers.count-1] as! UINavigationController
        navigationController.topViewController!.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem
        splitViewController.delegate = self
    }
}

extension AppDelegate: UISplitViewControllerDelegate {
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {
        guard let secondaryAsNavController = secondaryViewController as? UINavigationController else { return false }
        guard let topAsDetailController = secondaryAsNavController.topViewController as? DetailViewController else { return false }
        if topAsDetailController.detailItem == nil {
            // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
            return true
        }
        return false
    }
}

extension AppDelegate : ITypeResolver {
    func resolve<T>() -> T? {
        return container.resolve(T.self)
    }
}
