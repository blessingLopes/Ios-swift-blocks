//
//  MainViewController.swift
//  NavigationController
//
//  Created by Manuel Lopes on 27/03/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//
import UIKit

class MainViewController: UIViewController {
    
    // MARK: Stored Properties
    lazy var  textLabel: UILabel = UILabel()
    
    
    
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel = {
            let label  = UILabel(frame: self.view.bounds)
                label.text = "Some text"
                label.textColor = UIColor.blackColor()
                label.translatesAutoresizingMaskIntoConstraints = false
            return label
        } ()
   
        

        view.backgroundColor = .whiteColor()
        view.addSubview(textLabel)
        
        // Center label horizontally
        let constraintsLabel_H = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[superview]-(<=1)-[label]",
            options: .AlignAllCenterX,
            metrics: nil,
            views: ["superview": self.view, "label":textLabel])
        
        
        
        // center Label vertically
        let  constraintsLabel_V = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[superview]-(<=1)-[label]",
            options: .AlignAllCenterY,
            metrics: nil,
            views: ["superview":self.view, "label":textLabel])
        
        
        
        
        // Activate constraints ( label.translatesAutoresizingMaskIntoConstraints = false , PLEASE!)
        NSLayoutConstraint.activateConstraints(constraintsLabel_H)
        NSLayoutConstraint.activateConstraints(constraintsLabel_V)
        
        
        
        
        
        
        
        // add the gesture recognizer to the View
        let tap = UITapGestureRecognizer(target: self, action: #selector(MainViewController.tapInView(_:)))
        tap.numberOfTapsRequired = 1
        view.addGestureRecognizer(tap)
        
    }
    
    
    
    
    override func viewWillTransitionToSize( size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator){
        super.viewWillTransitionToSize(size , withTransitionCoordinator: coordinator)
        
        coordinator.animateAlongsideTransition({ context in
            // rotation code here
            
            }, completion:({ finished in  // finished rotating 
            })
            
        )
        
        
    }
    
    
    
    // MARK:- Gesture Handler
    func tapInView(gesture: UIGestureRecognizer){
        let redVC = ColorViewController(withColor: UIColor.redColor())
        redVC.title = "Red"
        
        navigationController?.pushViewController(redVC, animated: true)
        
    }
    
    
    
  
    
    
}


