//
//  AppDelegate.swift
//  DrawBall
//
//  Created by Duy Tang on 6/24/16.
//  Copyright © 2016 Duy Tang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        if let window = window {
            let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
            window.rootViewController = homeViewController
            window.backgroundColor = UIColor.whiteColor()
            window.makeKeyAndVisible()
        }
        
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        
    }
    
    func applicationWillTerminate(application: UIApplication) {
        
    }
    
}

