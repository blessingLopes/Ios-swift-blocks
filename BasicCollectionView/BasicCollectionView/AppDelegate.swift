//
//  AppDelegate.swift
//  BasicCollectionView
//
//  Created by manuel on 30/09/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		
		window = UIWindow(frame: UIScreen.mainScreen().bounds)
		window?.rootViewController = CollectionViewController(collectionViewLayout: Layout())
		window?.makeKeyAndVisible()
		
		
		return true
	}


}

