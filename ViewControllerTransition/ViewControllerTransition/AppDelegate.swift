//
//  AppDelegate.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		
		window = UIWindow(frame: UIScreen.mainScreen().bounds)
		window?.rootViewController = AViewController()
		window?.makeKeyAndVisible()
        
        
        
        
        let qualityOfServiceClass = QOS_CLASS_BACKGROUND
        let backgroundQueue = dispatch_get_global_queue(qualityOfServiceClass, 0)
        dispatch_async(backgroundQueue, {
            print("App is Launching...")
            
             // Log the time only when the app reaches the main thread
            dispatch_async(dispatch_get_main_queue()) { () -> Void in
                print("*** App Launched in: \(CFAbsoluteTimeGetCurrent() - START_TIME ) sec" )
            }
            
        })
        
        
        // Alternatively use just:
//        dispatch_async(dispatch_get_main_queue()) { () -> Void in
//            print("*** App Launched in: \(CFAbsoluteTimeGetCurrent() - START_TIME ) sec" )
//        }

		 
		return true
	}

    

    

}

