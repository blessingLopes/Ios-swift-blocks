//
//  ViewController.swift
//  NavigationController
//
//  Created by Manuel Lopes on 27/03/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    

    init(withColor: UIColor){
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor =  withColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
