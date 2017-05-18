//
//  AppDelegate.swift
//  SwiftAppSkeleton
//
//  Created by cuong on 5/16/17.
//  Copyright © 2017 Techmaster. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        BootLogic.boot(self.window!)
        self.window?.makeKeyAndVisible()
        return true
    }

}

