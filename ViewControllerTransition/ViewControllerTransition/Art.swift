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




// In case of a misspell, this approach doesn't throw an exception. Albeit the fact that it may be a little heavy handed to 'invade' UIImage namespace for this purpose.
// However, if the file name of an image changes one day, you have to change the identifier as well. And then you have to change the call at all positions in your project. So I think it would be a good idea to assign explicit raw values to the enum cases.


extension UIImage{
    
    enum ImageId: String {
        // Image Names of Pictures
        case Rocket         = "Rocket"
        case Me             = "Me"
        case RocketSelected = "RocketSelect"
        
        func isSelected( selected: Bool = false) -> ImageId {
            return selected ? ImageId(rawValue: rawValue + "Select")! : self
        }
    }
    
    convenience init!(imageId: ImageId) {
        self.init(named: imageId.rawValue)
    }
    
    
}







