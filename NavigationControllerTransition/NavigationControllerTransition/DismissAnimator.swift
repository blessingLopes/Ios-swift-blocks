//
//  DismissAnimator.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class DismissAnimator: NSObject, UIViewControllerAnimatedTransitioning {
	
	// set the transition duration
	func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval{
		return 0.5
	}
	
	
	
	func animateTransition(transitionContext: UIViewControllerContextTransitioning){
		// retrieve reference to the viewcontroller involved in the transition
		if  let fromVC   = transitionContext.viewControllerForKey( UITransitionContextFromViewControllerKey ) as? RocketViewController,
			let  toVC   = transitionContext.viewControllerForKey( UITransitionContextToViewControllerKey ) as? SpaceManViewController{
			
				// the container where the animations take place
			let container = transitionContext.containerView()
				// add the view of the viewcontroller that will be dismissed
			container?.addSubview(fromVC.view)
			// Add the view of the viewcontroller that will stay onScreen at the end of the animation.
			// Make sure it is added bellow the view that is first onScreen when the animation is called, or else it will cover any animation that might be programed to happen later.
			container?.insertSubview(toVC.view, belowSubview: fromVC.view)
				
			// adjust the frame of view controller to match the current orientation
			toVC.view.frame = (container?.bounds)!
			
				//set any initial value here
			
			UIView.animateWithDuration(
				transitionDuration(transitionContext),
				delay: 0,
				usingSpringWithDamping: 0.7,
				initialSpringVelocity: 0.5,
				options: [],
				animations: {
					
					// animate the image to the center of the screen on the viewController that is going onScreen
					toVC.imageView!.center = CGPoint(x: 180.0, y: 300.0)
					
					// animate the view that we are leaving. Dissolve it and move its image offScreen.
					fromVC.view.alpha = 0.0
					fromVC.imageView!.center  = CGPoint(x: 180.0, y: 800.0)
					
				}, completion: { (completed) -> () in
					// when the animation completes remove the view from the container
					fromVC.view.removeFromSuperview()
					
					// if we remove the toVC.view it will be removed from the view hierquie
					//toVC.view.removeFromSuperview()
					
					// let the transitionContext know if the animation completed
					transitionContext.completeTransition(completed)
			})
		}
	}
	
	
	
}
