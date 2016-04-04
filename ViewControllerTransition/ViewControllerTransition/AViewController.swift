//
//  ViewController.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


// A private extension to Selector. 
// All the properties added here are exclusive to This swift file and cannot be accessed from outside it.
private extension Selector{
    static let tapInView = #selector(AViewController.action(_:))
    
}





class AViewController: UIViewController {

	var imageView : UIImageView?
	let transitionDelegate = TransitionDelegate()
	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()

		print("load    V  i e  w!!")
		let tap = UITapGestureRecognizer(target: self, action:  .tapInView  )

		imageView = UIImageView(image: UIImage(imageId: .Me))
        
        view.addSubview(imageView!)
		view.addGestureRecognizer(tap)
        view.backgroundColor = Configuration.CustomColor.forAstronautBackground
        
	}
    
  
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        imageView?.center = CGPoint(x: 180.0, y: 300.0)
        imageView?.contentMode = .ScaleAspectFill
        imageView?.clipsToBounds = false
    }
    


    
  

	func action(tap: UIGestureRecognizer){
		let other = OtherViewController()
            other.image =  UIImage(imageId: .Rocket)
            other.transitioningDelegate = transitionDelegate
            other.modalPresentationStyle = .Custom
        
		self.presentViewController(other, animated: true, completion: nil)
		 
	
	}

	
	deinit {
		print("Deallocating instance",	self)
	}
	

}// END

