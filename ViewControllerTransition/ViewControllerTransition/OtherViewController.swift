//
//  OtherViewController.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class OtherViewController: UIViewController {
	
	var imageView : UIImageView?
    
  
	
	override func viewDidLoad(){
		super.viewDidLoad()
       
        // this will make the view adjust its position when the in-call status bar appear/disappears
		//view.autoresizingMask = [ .FlexibleTopMargin, .FlexibleBottomMargin]
        
		let tap = UITapGestureRecognizer(target: self, action: #selector(OtherViewController.dismissAction(_:)))
		view.addGestureRecognizer(tap)

		imageView = UIImageView(image: UIImage(named: "rocket.png"))
		imageView?.center = CGPoint(x: 0.0, y: 300.0)
//		imageView?.contentMode = .ScaleAspectFill
//		imageView?.clipsToBounds = true
		
		
		view.backgroundColor = UIColor.lightGrayColor()
		view.addSubview(imageView!)
		
		

		
	
	}
	


    
	
    func dismissAction(tap: UIGestureRecognizer){

        dismissViewControllerAnimated(true, completion: nil )
        
	}
	
	
	
	
	deinit {
		print("Deallocating instance",	self)
	}
	
	
}// END
