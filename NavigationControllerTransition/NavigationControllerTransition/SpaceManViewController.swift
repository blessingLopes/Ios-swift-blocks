//
//  ViewController.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

class SpaceManViewController: UIViewController {

    //MARK:- Properties
	var imageView : UIImageView?
	
	
    //MARK:- View life Cycle
	override func viewDidLoad() {
		super.viewDidLoad()

		let tap = UITapGestureRecognizer(target: self, action: #selector(SpaceManViewController.action))
	
		imageView = UIImageView(image: UIImage(named: "me.jpg"))
		imageView?.center = CGPoint(x: 180.0, y: 300.0)
		imageView?.contentMode = .ScaleAspectFill
		imageView?.clipsToBounds = true
		
		view.backgroundColor = UIColor.whiteColor()
		
		view.addSubview(imageView!)
		view.addGestureRecognizer(tap)
	
	
	}

    // MARK:- Gesture handlers
	func action(){
		let other = RocketViewController()
		navigationController?.pushViewController(other, animated: true)
	}

    
    
	//MARK:- De-init
	deinit {
		print("Deallocating instance",	self)
	}
	

}// END

