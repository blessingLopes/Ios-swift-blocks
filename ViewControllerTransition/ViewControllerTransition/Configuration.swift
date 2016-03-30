//
//  Configuration.swift
//  ViewControllerTransition
//
//  Created by Manuel Lopes on 30/03/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//

import UIKit

// This could be a struct or nested struct, but it could be mistakenly initialized as: let some = Configuration()
// With an enum with no cases or initializers, the compiler cannot construct the enum that way.

enum Configuration{

    enum CustomColor {
        static let forAstronautBackground : UIColor = .greenColor()
        static let forRocketBackground    : UIColor = .darkGrayColor()
    }
    
    static let DefaultColor = UIColor.whiteColor()

}