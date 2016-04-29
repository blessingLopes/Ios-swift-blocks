//
//  Cell.swift
//  BasicCollectionView
//
//  Created by manuel on 30/04/16.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
	
	//MARK:- Stored Properties
	
	let label: UILabel = UILabel()
	
    // not overridable type propery
    static var cellreuseIdentifier: String { return "\(self)"}
	
	//MARK:- Init
	override init(frame: CGRect) {
		super.init(frame: frame)
        
        setupLabel()
    }
	
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
        setupLabel()
	}

	
		
    //MARK:- Add constraints
	
    
    override func updateConstraints() {
        
        // set constraint on label using Layout Guides
        let margins = contentView.layoutMarginsGuide
        
        // Pin the trailing edge of myView to the cell  trailing edge
        label.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        

        // Pin the bottom edge of the label to the bottom margin of the cell
        label.bottomAnchor.constraintEqualToAnchor(margins.bottomAnchor).active = true
        
        super.updateConstraints()
    }
    
    
    
    
    
    
	//MARK:- Custom Layout Attributes
	
	override func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes) {
		super.applyLayoutAttributes(layoutAttributes)
		
		if let attrib = layoutAttributes as? StackLayoutAttributes{
			if let sh	   = attrib.shadowRadius { contentView.layer.shadowRadius = sh }
			if let sho	   = attrib.shadowOffset { contentView.layer.shadowOffset = sho }
			if let shOp	   = attrib.shadowOpacity{ contentView.layer.shadowOpacity = shOp }
			if let shColor = attrib.shadowColor	 { contentView.layer.shadowColor = shColor.CGColor }
			
		}
		
	}
	
    
    //MARK:- private convenience methods
    
    private func setupLabel(){
        
        label.textAlignment = .Center
        label.lineBreakMode = .ByTruncatingMiddle
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0

        contentView.addSubview(label)

        setNeedsUpdateConstraints()
        
    }

    // if this is not overriden the cells will NOT get the updated font size!
    override func prepareForReuse() {
        super.prepareForReuse()
        
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
        
    }
	
	
}
