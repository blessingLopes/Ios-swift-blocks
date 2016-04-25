//
//  AppDelegate.swift
//  IOSBasics
//
//  Created by Blessing on 24/03/16.
//  Copyright © 2016 Blessing. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let appBounds = UIScreen.mainScreen().bounds
        
        window = UIWindow(frame: appBounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        
        return true
    }

}

