//
//  LayoutSetupValues.swift
//  BasicCollectionView
//
//  Created by manuel on 30/04/16.
//  Copyright © 2015 Blessing.co. All rights reserved.
//



import UIKit



struct LayoutSetupValues {
	
	//MARK:-   Read-Only computed Properties
	
	var scr : CGRect { return UIScreen.mainScreen().bounds }
    var scrSize : CGSize { return UIScreen.mainScreen().bounds.size }
	
	//  cell width is 1/3 of the screen width
    var cellWidth : CGFloat {
		let width = scr.width
		return width / 3.0
	}
	
	
	// The Cell Size
	var cellSize : CGSize { return CGSizeMake(cellWidth, cellWidth)  }
	
	
}








