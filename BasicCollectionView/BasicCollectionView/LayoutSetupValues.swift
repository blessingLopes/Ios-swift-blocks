//
//  LayoutSetupValues.swift
//  BasicCollectionView
//
//  Created by manuel on 01/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//



import UIKit



struct LayoutSetupValues {
	
	// color palette for day & night color schemes
	private	struct ColorPalette  {
		struct ForLightScheme {
			static let shadow3DEffect : UIColor = UIColor(red: 255.0, green: 255.0, blue: 255.0, alpha: 1.0)
		}
		struct ForDarkScheme {
			static let shadow3DEffect : UIColor = UIColor(red: 33.0, green: 33.0, blue: 33.0, alpha: 1.0)
		}
	}
	
	
	struct StackValues {
		static let forLightScheme3DEffect: UIColor = ColorPalette.ForLightScheme.shadow3DEffect
		static let forDarkScheme3DEffect : UIColor = ColorPalette.ForDarkScheme.shadow3DEffect
		
	}
	
	
	
	//MARK:-   Read-Only computed Properties
	
	var scr : CGRect { return UIScreen.mainScreen().bounds }
	
	
	// get the number of Colums to use depending on device orientation
	var numberOfColumsForOrientation: Int {
		switch scr.width <= scr.height {
		case true:	return 4
		case false:	return 7
		}
	}
	
	
	// calculates and cell size
	var cellWidth : CGFloat {
		let width = scr.width
		let colums  = numberOfColumsForOrientation
		let lineSpac = CGFloat(colums - 1)
		
		return (width - lineSpac) / CGFloat(colums)
	}
	
	
	// The Cell Size
	var cellSize : CGSize { return CGSizeMake(cellWidth, cellWidth)  }
	
	
	
	
	
	//MARK:- Stored Properties
	
	let stackCount							: Int	  = 5 //  5 cells in the Stack
	let minimumInteritemSpacingForGridLayout: CGFloat = 1.0
	let minimumLineSpacingForGridLayout		: CGFloat =	1.0
	
	
	
	
}

// conform to Equatable
func ==(lhs: LayoutSetupValues, rhs: LayoutSetupValues) -> Bool{
	
	let cellSizeIsEqual = lhs.cellSize == rhs.cellSize
	let stackCountIsEqual = lhs.stackCount == rhs.stackCount
	let misIsEqual = lhs.minimumInteritemSpacingForGridLayout == rhs.minimumInteritemSpacingForGridLayout
	let mlsIsEqual = lhs.minimumLineSpacingForGridLayout == rhs.minimumLineSpacingForGridLayout
	
	return cellSizeIsEqual && stackCountIsEqual && misIsEqual && mlsIsEqual
}



