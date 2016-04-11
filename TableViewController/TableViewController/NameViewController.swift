//
//  NameViewController.swift
//  TableViewController
//
//  Created by Manuel Lopes on 11/04/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//


import UIKit

class NameViewController: UIViewController {
    
    var fullName : String?
    var fullNameLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        if let nameLabel = fullName{
            fullNameLabel = UILabel(frame: view.bounds)
            fullNameLabel.text = nameLabel
            fullNameLabel.textColor = UIColor.blackColor()
            fullNameLabel.textAlignment = .Center
            view.addSubview(fullNameLabel)
        }
    }
    
}

