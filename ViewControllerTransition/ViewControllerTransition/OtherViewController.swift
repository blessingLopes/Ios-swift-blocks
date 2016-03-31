//
//  OtherViewController.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit





private extension Selector{
    static let tapInView = #selector(OtherViewController.dismissAction(_:))
    
}



class OtherViewController: UIViewController {
	
	var imageView : UIImageView = UIImageView()
    
  
    var image: UIImage? {
        didSet {
            if let image = image {
                imageView.image = image
            }
        }
    }

	
	override func viewDidLoad(){
		super.viewDidLoad()
       
        // this will make the view adjust its position when the in-call status bar appear/disappears
		//view.autoresizingMask = [ .FlexibleTopMargin, .FlexibleBottomMargin]
        
		let tap = UITapGestureRecognizer(target: self, action: .tapInView )
		view.addGestureRecognizer(tap)

        imageView.image = image
		view.backgroundColor = Configuration.DefaultColor
		view.addSubview(imageView)
		
		

		
	
	}
	
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        imageView.frame = view.bounds
        imageView.contentMode = .ScaleAspectFit
        imageView.clipsToBounds = true
    }


    
	
    func dismissAction(tap: UIGestureRecognizer){

        image = Pictures.Rocket.image(selected: true)
        dismissViewControllerAnimated(true, completion: nil )
        
	}
	
	
	
	
	deinit {
		print("Deallocating instance",	self)
	}
	
	
}// END
