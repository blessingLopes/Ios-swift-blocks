//
//  Art.swift
//  ViewControllerTransition
//
//  Created by Manuel Lopes on 30/03/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//

import UIKit

// This allows for  no explicit hard-coded strings at all in our Viewcontroller! We now have constants for all of our images names.
// If a string ii misspelled here there will be an exception at run time. 
// If we use regular UIimage in the viewcontroller with a wrong file name there is no exception - the image simply does not show.
enum Pictures: String {
    case Rocket = "rocket.png"
    case Me     = "me.jpg"


    func image() -> UIImage{
        return UIImage(named: self.rawValue)!
    
    }
    

}


