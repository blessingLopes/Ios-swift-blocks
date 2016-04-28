//
//  Animator.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class Animator: NSObject, UIViewControllerAnimatedTransitioning {
	
	
	func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval{
		return 0.5
	}
	
	
	
	func animateTransition(transitionContext: UIViewControllerContextTransitioning){
		if  let  toVC   = transitionContext.viewControllerForKey( UITransitionContextToViewControllerKey ) as? RocketViewController,
			let  fromVC   = transitionContext.viewControllerForKey( UITransitionContextFromViewControllerKey ) as? SpaceManViewController{
			
			let container = transitionContext.containerView()
			container?.addSubview(toVC.view)

			toVC.view.alpha = 0.0
			toVC.imageView!.center = CGPoint(x: 180.0, y: 800.0)
	
			UIView.animateWithDuration(
				transitionDuration(transitionContext),
				delay: 0,
				usingSpringWithDamping: 0.9,
				initialSpringVelocity: 2.5,
				options: .BeginFromCurrentState,
				animations: {
					
                    fromVC.imageView!.center = CGPoint(x: 180.0, y: 800.0)
			
					toVC.view.alpha = 1.0
					toVC.imageView!.center = CGPoint(x: 180.0, y: 300.0)
					
				}, completion: { (completed) -> () in
					
					transitionContext.completeTransition(completed)
			})
		}
	}
	

	
	
	
	
	
}// END
