//
//  Cell.swift
//  BasicCollectionView
//
//  Created by manuel on 30/09/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
	
	//MARK:- Stored Properties
	
	let label: UILabel = UILabel()
	
    static var cellreuseIdentifier: String { return "\(self)"}
	
	//MARK:- Init
	override init(frame: CGRect) {
		super.init(frame: frame)
        
        setup()
    }
	
	
	
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
        setup()
	}

	
	

	
    private func setup(){
    
        label.frame = bounds
        label.textAlignment = .Center
        label.contentMode = .ScaleAspectFill
        
        contentView.addSubview(label)

        
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
	

	
	
}
