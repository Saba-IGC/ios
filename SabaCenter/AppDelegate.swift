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

@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?

    let container: Container = {
        let container = Container()
        container.register(IPlaceholderService.self) { _ in PlaceholderService()}.inObjectScope(.container)
        container.register(IPlaceholderRepository.self) { resolver in PlaceholderRepository(placeholderService: resolver.resolve(IPlaceholderService.self)!)}.inObjectScope(.container)
        container.register(INavigationService.self) { _ in NavigationService()}.inObjectScope(.container)
        container.register(ILectureService.self) { _ in LectureService()}.inObjectScope(.container)
        container.register(ILectureRepository.self) { resolver in LectureRepository(lectureService: resolver.resolve(ILectureService.self)!)}.inObjectScope(.container)
        container.register(MainPageViewModel.self) { resolver in MainPageViewModel(placeholderRepo: resolver.resolve(IPlaceholderRepository.self)!, navigationService: resolver.resolve(INavigationService.self)!) }
        container.register(DetailPageViewModel.self) { resolver in DetailPageViewModel(navigationService: resolver.resolve(INavigationService.self)!) }
        container.register(NavigateTestPageViewModel.self) { _ in NavigateTestPageViewModel() }
        container.register(LecturePageViewModel.self) { resolver in LecturePageViewModel(lectureRepo: resolver.resolve(ILectureRepository.self)!)}
        container.register(SchedulePageViewModel.self) {resolver in SchedulePageViewModel(scheduleRepo: resolver.resolve(IScheduleRepository.self)!)}
        container.register(IScheduleService.self) { _ in ScheduleService()}.inObjectScope(.container)
        container.register(IScheduleRepository.self) { resolver in ScheduleRepository(scheduleService: resolver.resolve(IScheduleService.self)!)}.inObjectScope(.container)
        container.register(HomePageViewModel.self) {resolver in HomePageViewModel(hadithRepo: resolver.resolve(IHadithRepository.self)!, scheduleRepo: resolver.resolve(IScheduleRepository.self)!)}
        container.register(IHadithService.self) { _ in HadithService()}.inObjectScope(.container)
        container.register(IHadithRepository.self) { resolver in HadithRepository(hadithService: resolver.resolve(IHadithService.self)!)}.inObjectScope(.container)

        return container
    }()

    override init() {
        super.init()
        ViewModelFactory.resolver = self
    }
}

extension AppDelegate: ITypeResolver {
    func resolve<T>() -> T? {
        return container.resolve(T.self)
    }
}
