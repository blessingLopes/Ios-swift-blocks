//
//  ViewController.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

	var imageView : UIImageView?
	
	let transitionDelegate = TransitionDelegate()
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()

		
		let tap = UITapGestureRecognizer(target: self, action: #selector(AViewController.action(_:)))
		
			
		imageView = UIImageView(image: UIImage(named: "me.jpg"))
		
		
		
		view.addSubview(imageView!)
		view.addGestureRecognizer(tap)
        
        view.backgroundColor = UIColor.blueColor()
        
	}
    
  
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        imageView?.center = CGPoint(x: 180.0, y: 300.0)
        imageView?.contentMode = .ScaleAspectFill
        imageView?.clipsToBounds = false
    }
    


    
  

	func action(tap: UIGestureRecognizer){
		let other = OtherViewController()
            other.image =  UIImage(named: "rocket.png")
            other.transitioningDelegate = transitionDelegate
            other.modalPresentationStyle = .Custom
        
		self.presentViewController(other, animated: true, completion: nil)
		 
	
	}

	
	deinit {
		print("Deallocating instance",	self)
	}
	

}// END

