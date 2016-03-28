//
//  Animator.swift
//  CustomViewControllerTransition
//
//  Created by manuel on 02/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class Animator: NSObject, UIViewControllerAnimatedTransitioning {

	
//	init(animatorData: AnimationData){
//		self.animData = animatorData
//		super.init()
//	}
	
	
	func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval{
		return 0.3
	}
	
	
	
	func animateTransition(transitionContext: UIViewControllerContextTransitioning){
		if  let  toVC   = transitionContext.viewControllerForKey( UITransitionContextToViewControllerKey ) as? OtherViewController,
			let  fromVC   = transitionContext.viewControllerForKey( UITransitionContextFromViewControllerKey ) as? AViewController{
			
			let container = transitionContext.containerView()
			container?.addSubview(toVC.view)
			
            //TODO: check this
            // container?.frame = UIScreen.mainScreen().bounds
            //	toVC.view.frame = (container?.bounds)!
        
                
			toVC.view.alpha = 0.0
			toVC.imageView!.center = CGPoint(x: 180.0, y: 800.0)
			
		
				
			UIView.animateWithDuration(
				transitionDuration(transitionContext),
				delay: 0,
				usingSpringWithDamping: 0.9,
				initialSpringVelocity: 2.5,
				options: [],
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
