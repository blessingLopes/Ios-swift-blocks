//
//  TransitionDelegate.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class TransitionDelegate: NSObject, UIViewControllerTransitioningDelegate{
	
	func animationControllerForPresentedController(
						presented: UIViewController,
						presentingController presenting: UIViewController,
						sourceController source: UIViewController)
						-> UIViewControllerAnimatedTransitioning? {
							
			return Animator()
		
	}
	
	
	func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
		return DismissAnimator()
	}
	
	
}// END
