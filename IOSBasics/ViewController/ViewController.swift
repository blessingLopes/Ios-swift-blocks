//
//  ViewController.swift
//  IOSBasics
//
//  Created by Blessing on 24/03/16.
//  Copyright © 2016 Blessing. All rights reserved.
//



#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

import UIKit

class ViewController: UIViewController {
    
    // MARK:- Properties
    
    var example : String
    
    
    
    // MARK: Init
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        
        example = " hello world"
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        example = " hello !"
        super.init(coder: aDecoder)
        
    }
    
    
    init() {
        self.example = " hello !"
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: De-init
    
    
    
    deinit{
        // debug identifiers
        #if (swift(>=2.2) && os(iOS))
           print("de init is on line \(#line) of \(#function) and \(#file)")
        #elseif os(tvOS)
           print("the tube")
        #endif
        
    } 
    
  
    
   

    
    
    // MARK:- View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    
    // MARK:- Private Convenience Methods
    
    private  func setupViewController(){
        
        view.backgroundColor = UIColor.redColor()
        
        let origin		= CGPointMake(150.0, 100.0)
        let size		= CGSizeMake(100.0, 100.0)
        
        // create a rect for our view
        let viewframe	= CGRect(origin: origin, size: size)
        
        let whiteView = UIView(frame: viewframe)
        // color it white
        whiteView.backgroundColor = UIColor.whiteColor()
        
        
        
        // add the view as a subView of our viewcontroller's view
        view.addSubview(whiteView)
        
        
    }
    
    
    
    
}// END

