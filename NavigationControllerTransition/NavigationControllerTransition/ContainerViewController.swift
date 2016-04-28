//
//  ViewController.swift
//  CustomNavigationAnimation
//
//  Created by manuel on 03/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


// container viewController
class ContainerViewController: UIViewController, UINavigationControllerDelegate {

	private var navController : UINavigationController?
    private let navDelegate = NavigationDelegate()
	
	// keep track of which view controller is currently active in the container
	private var activeViewController : UIViewController? {
		willSet{ addActiveViewcontroller( newValue ) }
		didSet{ removeInactiveViewController( oldValue ) }
		
	}


	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupNavigationController()
	}

    
    

	
	
	
	//MARK:- Private Methods
	private func setupNavigationController(){
		
		let initial = SpaceManViewController()
		initial.title = "One"
		
		navController = UINavigationController(rootViewController: initial)
		navController?.delegate = navDelegate
		navController?.navigationBar.barTintColor = .whiteColor()
//		navController?.navigationBar.clipsToBounds = true
		navController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.blackColor()]
        navController?.interactivePopGestureRecognizer?.enabled = true
        
		// Set the active ViewController on the container
		activeViewController = navController
		
		
		
	}

	
	
	
	private func removeInactiveViewController(inactiveViewController: UIViewController?){
		if isViewLoaded(){
			if let inActiveVC = inactiveViewController {
				inActiveVC.willMoveToParentViewController(nil)
				inActiveVC.view.removeFromSuperview()
				inActiveVC.removeFromParentViewController()
			}
		}
		
	}
	
	private func addActiveViewcontroller(activeViewController: UIViewController?){
		if isViewLoaded(){
			if let activeVC = activeViewController{
				addChildViewController(activeVC)
				activeVC.view.frame = view.bounds
				view.addSubview(activeVC.view)
				activeVC.didMoveToParentViewController(self)
			}
		}
	}
	



}// ENd

