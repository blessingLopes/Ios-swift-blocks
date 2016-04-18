//
//  TableViewCell.swift
//  TableViewController
//
//  Created by Manuel Lopes on 05/04/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//

import UIKit



class TableViewCell: UITableViewCell {
    
    // MARK:- Properties
    
    class var reuseIdentifier: String { return "\(self)"}
    
    let label: UILabel = UILabel()
    let title: UILabel = UILabel()
    let count: UILabel = UILabel()
    
    //MARK:- Initializers
    override init(style: UITableViewCellStyle, reuseIdentifier: String!)	{
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLabels()
        
    }
    
    
    required init?(coder aDecoder: NSCoder)	{
        super.init(coder: aDecoder)
        setupLabels()
    }
    

    override func updateConstraints() {
  
        
        // set constraint on label using Layout Guides
        let margins = contentView.layoutMarginsGuide
        
        
        // Pin the leading edge of the title view to the leading edge of the cell (cell's contentView)
        title.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        
        // Pin the top edge of the title view to the top edge of the cell
        title.topAnchor.constraintEqualToAnchor(margins.topAnchor).active = true
        
        // Pin the trailing edge of the count view 30 points away from the trailing edge of the cell
        count.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor, constant: -30.0).active = true
        
        // Pin the top edge of the count view to the top of the cell
        count.topAnchor.constraintEqualToAnchor(margins.topAnchor).active = true
        
        // Pin the leading edge of myView to the cell  leading edge
        label.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        
        // Pin the trailing edge of myView to the cell  trailing edge
        label.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        
        // Pin the top edge of the label to the top margin of the cell
        label.topAnchor.constraintEqualToAnchor(title.bottomAnchor, constant: 10.0).active = true
        
        // Pin the bottom edge of the label to the bottom margin of the cell
        label.bottomAnchor.constraintEqualToAnchor(margins.bottomAnchor).active = true
        
        super.updateConstraints()
        
    }
    
    // if this is not overriden then not ALL the cells will get the updated font size!
    override func prepareForReuse() {
        super.prepareForReuse()
        
        title.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        count.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
       
    }

    
    // MARK:- private convenience Methods
    
    
    private func setupLabels(){
        
        title.numberOfLines = 0
        title.textAlignment = .Center
        title.textColor = .darkGrayColor()
        title.backgroundColor = .cyanColor()
        title.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        title.translatesAutoresizingMaskIntoConstraints = false
        
        count.numberOfLines = 0
        count.textAlignment = .Center
        count.textColor = .darkGrayColor()
        count.backgroundColor = .greenColor()
        count.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
        count.translatesAutoresizingMaskIntoConstraints = false
        
        label.numberOfLines = 0 // set to 0 to force to display untruncated text.
        label.textAlignment = .Natural
        label.textColor = .darkGrayColor()
        label.backgroundColor = .yellowColor()
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        label.translatesAutoresizingMaskIntoConstraints = false

        contentView.addSubview(title)
        contentView.addSubview(count)
        contentView.addSubview(label)
        
        setNeedsUpdateConstraints()
       
    }
    
    
}// ENd







