//
//  StackLayoutAttributes.swift
//  BasicCollectionView
//
//  Created by manuel on 01/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//



import UIKit



class StackLayoutAttributes: UICollectionViewLayoutAttributes {
	
	var shadowOffset  : CGSize?
	var shadowColor   : UIColor?
	var shadowOpacity : Float?
	var shadowRadius  : CGFloat?
	
	
	
	// required by UICollectionViewLayoutAttributes
	override func copyWithZone(zone: NSZone) -> AnyObject {
		if let copiedAttributes: StackLayoutAttributes = super.copyWithZone(zone) as? StackLayoutAttributes{
			copiedAttributes.shadowOffset	= shadowOffset
			copiedAttributes.shadowColor	= shadowColor
			copiedAttributes.shadowOpacity	= shadowOpacity
			copiedAttributes.shadowRadius	= shadowRadius
			return copiedAttributes
			
		}
		return super.copyWithZone(zone)
	}
	
	
	// required by UICollectionViewLayoutAttributes
	override func isEqual(object: AnyObject?) -> Bool {
		if let attributes = object as? StackLayoutAttributes{
			if  attributes.shadowOffset == shadowOffset &&
				attributes.shadowColor == shadowColor &&
				attributes.shadowOpacity == shadowOpacity &&
				attributes.shadowRadius == shadowRadius{
					return super.isEqual(object)
			}
		}
		return false
	}
	

	
	
}// ENd

