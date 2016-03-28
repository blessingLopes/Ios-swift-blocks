//
//  DismissAnimator.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class DismissAnimator: NSObject, UIViewControllerAnimatedTransitioning {
	

	func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval{
		return 1.6
	}
	
	
	
	func animateTransition(transitionContext: UIViewControllerContextTransitioning){
	
		if  let fromVC   = transitionContext.viewControllerForKey( UITransitionContextFromViewControllerKey ) as? OtherViewController,
			let  toVC   = transitionContext.viewControllerForKey( UITransitionContextToViewControllerKey ) as? AViewController{
			
			let container = transitionContext.containerView()
			container?.addSubview(fromVC.view)
                
           // TODO: check this
            // fromVC.view.frame = (container?.bounds)!
              
			fromVC.view.alpha = 1.0
			
			
			UIView.animateWithDuration(
				transitionDuration(transitionContext),
				delay: 0,
				usingSpringWithDamping: 0.9,
				initialSpringVelocity: 2.5,
				options: .BeginFromCurrentState,
				animations: {
					
					
					toVC.imageView!.center = CGPoint(x: 180.0, y: 300.0)
					
					fromVC.view.alpha = 0.0
					fromVC.imageView!.center  = CGPoint(x: 180.0, y: 800.0)
					
				}, completion: { (completed) -> () in
					fromVC.view.removeFromSuperview()
					transitionContext.completeTransition(completed)
			})
		}
	}
	
	
	
}
