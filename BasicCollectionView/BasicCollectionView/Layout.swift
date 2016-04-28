//
//  Layout.swift
//  BasicCollectionView
//
//  Created by manuel on 29/04/16.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit


class Layout: UICollectionViewLayout {
	
	
	// MARK:- Stored Properties
	var attributesInfo : [NSIndexPath : StackLayoutAttributes ] = [:]
	
	
	// MARK:- Read-Only Computed Property
	var setup	: LayoutSetupValues { return LayoutSetupValues() }
	
    var contentSize = CGSizeZero
	
	// Tell the collection view that i'll be using StackLayoutAttributes, and not the default UICollectionViewLayoutAttributes for the layout attributes.
	override class func layoutAttributesClass() -> AnyClass {
		return StackLayoutAttributes.self
	}

	
	 
	
	// Prepare the  Layout
	
	override func prepareLayout() {
	
		let cellsize = setup.cellSize
		let screenSize = UIScreen.mainScreen().bounds.size
		var center = CGPointMake(screenSize.width / 2.0 , 100.0)
		
		let itemCount = collectionView?.numberOfItemsInSection(0)
        var ind = 0
		
		// generate the an attributes array for each cell's indexpath 
		for  _ in (0 ..< itemCount!){
    
			let indexPath = NSIndexPath(forItem: ind, inSection: 0)
			let attributes  = StackLayoutAttributes(forCellWithIndexPath: indexPath)
			attributes.size = cellsize
			attributes.center = center
			attributes.shadowOffset = CGSize(width: 1.0, height: 1.0)
			attributes.shadowColor = .lightGrayColor()
			attributes.shadowOpacity = 0.5
			attributes.shadowRadius = 3.0
			
		
			center = CGPointMake(center.x , center.y + 50.0)
			attributes.alpha = 1.0
			attributes.zIndex = (itemCount! - ind)
			
			attributesInfo[indexPath] = attributes
            ind += 1
            
		}
        contentSize = CGSizeMake(0.0, center.y + 30.0)
	}
	
	
	
	
	
	
	
	//MARK:- Methods a subclass needs to override
	
	
	override func collectionViewContentSize() -> CGSize {
		return  contentSize
	}
	
	
	
	override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		return Array(attributesInfo.values)
	}
	
	
	
	override func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
		return attributesInfo[indexPath]
	}
	
	
	
	
	override func shouldInvalidateLayoutForBoundsChange(newBounds: CGRect) -> Bool {
		let bounds = self.collectionView?.bounds
		return boundsDidChangeFrom(newBounds: newBounds, to: bounds!)
	}
	
	
	// MARK:- UICollectionViewLayout subClass Optional Methods
	
	override func invalidateLayout() {
		super.invalidateLayout()
		attributesInfo.removeAll(keepCapacity: true)
		
	}
	
	

	
	
	//MARK:- Private Methods
	
	private func boundsDidChangeFrom(newBounds newBounds: CGRect, to oldBounds: CGRect) -> Bool{
		let boundsStatus = ((CGRectGetWidth(newBounds) != CGRectGetWidth(oldBounds) ||
			(CGRectGetHeight(newBounds) != CGRectGetHeight(oldBounds))))
		
		return boundsStatus
		
	}
	
	
	
	
	
}
