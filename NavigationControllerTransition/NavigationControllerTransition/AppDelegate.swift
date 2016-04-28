//
//  AppDelegate.swift
//  CustomNavigationAnimation
//
//  Created by manuel on 03/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		window = UIWindow(frame: UIScreen.mainScreen().bounds)
		window?.rootViewController = ContainerViewController()
		window?.makeKeyAndVisible()
		
		
		return true
	}

	
}

