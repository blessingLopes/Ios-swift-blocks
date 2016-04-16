//
//  TableViewCell.swift
//  TableViewController
//
//  Created by Manuel Lopes on 05/04/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//

import UIKit



class TableViewCell: UITableViewCell {
    
    class var reuseIdentifier: String { return "\(self)"}
    
    let label : UILabel = UILabel()

    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)	{
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        
    }
    
    
    required init?(coder aDecoder: NSCoder)	{
        super.init(coder: aDecoder)
        setup()
    }
    
    
 private func setup(){
    
    label.frame = CGRectMake(0.0, 0.0, bounds.width, bounds.height)

    label.numberOfLines = 0 // set to 0 to force to display untruncated text.
    label.textAlignment = .Center
    label.textColor = .darkGrayColor()
    label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
    label.translatesAutoresizingMaskIntoConstraints = false

    contentView.addSubview(label)
    
    
    // set constraint on label
    
    let margins = contentView.layoutMarginsGuide
    
    // Pin the leading edge of myView to the superview  (cell's contentView) leading edge
    label.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
    
    // Pin the trailing edge of myView to the superview (cell's contentView) trailing edge
    label.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
    
    // Pin the top edge of the label to the top margin of the superview
    label.topAnchor.constraintEqualToAnchor(margins.topAnchor).active = true
    
      // Pin the bottom edge of the label to the bottom margin of the superview
    label.bottomAnchor.constraintEqualToAnchor(margins.bottomAnchor).active = true
    
   


}

    
    
    
}// ENd







