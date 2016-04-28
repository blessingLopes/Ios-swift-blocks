//
//  NavigationDelegate.swift
//  CustomNavigationAnimation
//
//  Created by Manuel Lopes on 28/04/16.
//  Copyright © 2016 Blessing.co. All rights reserved.
//

import UIKit



// Custom UINavigationController Delegate

class NavigationDelegate: NSObject, UINavigationControllerDelegate{
    

    private let pushAnimator = Animator()
    private let popAnimator = DismissAnimator()
    

func navigationController(navigationController: UINavigationController,
                          animationControllerForOperation operation: UINavigationControllerOperation,
                          fromViewController fromVC: UIViewController,
                          toViewController toVC: UIViewController)
     -> UIViewControllerAnimatedTransitioning? {
        
        return operation == .Push ?   pushAnimator : popAnimator
}

}// End

