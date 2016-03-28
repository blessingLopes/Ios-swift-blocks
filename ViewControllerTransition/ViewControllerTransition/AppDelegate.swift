//
//  AppDelegate.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		// Override point for customization after application launch.
		window = UIWindow(frame: UIScreen.mainScreen().bounds)
       
		window?.rootViewController = AViewController()
		window?.makeKeyAndVisible()
		
		
		
		return true
	}

    

    

}

