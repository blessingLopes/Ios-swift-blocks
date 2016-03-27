//
//  AppDelegate.swift
//  NavigationController
//


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
   
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let main = MainViewController()
        window?.rootViewController = UINavigationController(rootViewController: main)
        window?.makeKeyAndVisible()

        
        return true
    }

   
}

