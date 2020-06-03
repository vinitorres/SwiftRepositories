//
//  AppDelegate.swift
//  SwiftProjects
//
//  Created by Andre Vinicius Torres Conrado on 30/05/20.
//  Copyright © 2020 Andre Vinicius Torres Conrado. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupFirstScreen()
        return true
    }

    private func setupFirstScreen() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let initialScreen = RepositoriesRouter.assembleModule()
        let navigationController = UINavigationController(rootViewController: initialScreen)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }




}

