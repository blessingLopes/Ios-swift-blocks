//
//  TableViewCell.swift
//  TableViewController
//
//  Created by Manuel Lopes on 05/04/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//

import UIKit



class TableViewCell: UITableViewCell {
    
    
    let titleLabel : UILabel
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)	{
        
        titleLabel = UILabel()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        titleLabel.frame = CGRectMake(0.0, 0.0, bounds.width, bounds.height)
        titleLabel.lineBreakMode = .ByTruncatingTail
        titleLabel.numberOfLines = 1 // set to 0 to force to display untruncated text.
        titleLabel.textAlignment = .Center
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
        
        contentView.backgroundColor = UIColor.grayColor()
        contentView.addSubview(titleLabel)
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder)	{
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}

