//
//  NameViewController.swift
//  TableViewController
//
//  Created by Manuel Lopes on 11/04/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//


import UIKit

class NameViewController: UIViewController {
    
   
    lazy var fullNameLabel : UILabel = {
        let label  = UILabel(frame: self.view.bounds)
        label.textColor = UIColor.blackColor()
        label.text = self.name
        label.textAlignment = .Center
        return label
    }()

    let name: String
    
    
// MARK:-  init
    

    init(withName: String){
        name = withName
        super.init(nibName: nil, bundle: nil)
     
    }
    
 
  required  init?(coder aDecoder: NSCoder) {
       fatalError("no init")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(fullNameLabel)
    }
    

    
    
}// End

