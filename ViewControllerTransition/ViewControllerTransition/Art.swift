//
//  Art.swift
//  ViewControllerTransition
//
//  Created by Manuel Lopes on 30/03/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//

import UIKit

/*

// This allows for no explicit hard-coded strings in all in our Viewcontroller! We now have constants for all of our images names.
// If a image name string is misspelled, though,  there will be an exception at run time.

// Using a tradicional UIImage(named: "name.jpg") does NOT raise an exception if the file is misspplled.
enum Pictures: String {
    case Rocket = "rocket"
    case Me     = "me"


    
    func image(selected selected: Bool = false) -> UIImage {
        return UIImage(named: selected ? self.rawValue + "-selected" : self.rawValue)!
    }
 

}

*/




// In case of a misspell, this approach doesn't throw an exception. Albeit the fact that it may be a little heavy handed to 'invade' UIImage namespace for this purpose
extension UIImage{
    
    enum AssetIdentifier: String {
        // Image Names of Pictures
        case Rocket
        case Me
        case RocketSelected
        
        func image(selected selected: Bool = false) -> AssetIdentifier {
            return selected ? AssetIdentifier(rawValue: self.rawValue + "Selected")! : self
        }
    }
    
    convenience init!(assetIdentifier: AssetIdentifier) {
        self.init(named: assetIdentifier.rawValue)
    }
    
    
}
