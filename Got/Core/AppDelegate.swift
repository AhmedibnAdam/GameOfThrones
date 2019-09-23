//
//  AppDelegate.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 7/25/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window?.rootViewController = UINavigationController(rootViewController: UsersModuleBuilder.createModule())

        
        return true
    }

}

