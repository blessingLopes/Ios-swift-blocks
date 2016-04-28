//
//  OtherViewController.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class RocketViewController: UIViewController {
    
	//MARK:- Properties
	var imageView : UIImageView?
    
    
    
    
    //MARK:- View life Cycle

	override func viewDidLoad(){
		super.viewDidLoad()
		
		let tap = UITapGestureRecognizer(target: self, action: #selector(dismissAction))
	
		imageView = UIImageView(image: UIImage(named: "rocket.png"))
		imageView?.center = CGPoint(x: 180.0, y: 300.0)
		imageView?.contentMode = .ScaleAspectFill
		imageView?.clipsToBounds = true
		
		view.backgroundColor = .whiteColor()
	
		view.addSubview(imageView!)
		view.addGestureRecognizer(tap)
	}
	
    

    
	// MARK:- Gesture handlers
	func dismissAction(){
		navigationController?.popToRootViewControllerAnimated(true)
	
	}
	
	
	
	//MARK:- de-init
	deinit {
		print("Deallocating instance",	self)
	}
	
	
}// END
