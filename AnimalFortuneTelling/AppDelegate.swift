//
//  AppDelegate.swift
//  AnimalFortuneTelling
//
//  Created by jollyjoester_pro on 3/4/16.
//  Copyright © 2016 jollyjoester. All rights reserved.
//

import UIKit
import Repro

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        print("application:didFinishLaunchingWithOptions")

        Repro.setup("YOUR-REPRO-TOKEN")
        Repro.startRecording()

        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        print("applicationWillResignActive")
    }

    func applicationDidEnterBackground(application: UIApplication) {
        print("applicationDidEnterBackground")
    }

    func applicationWillEnterForeground(application: UIApplication) {
        print("applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(application: UIApplication) {
        print("applicationDidBecomeActive")
    }

    func applicationWillTerminate(application: UIApplication) {
        print("applicationWillTerminate")
    }
}

