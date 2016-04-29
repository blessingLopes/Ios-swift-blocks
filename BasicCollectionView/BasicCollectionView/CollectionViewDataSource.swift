//
//  CollectionViewDataSource.swift
//  BasicCollectionView
//
//  Created by manuel on 30/04/16.
//  Copyright © 2015 Blessing.co. All rights reserved.
//



import UIKit




class CollectionViewDataSource: NSObject, UICollectionViewDataSource{
	
	
	
	//MARK: CollectionView DataSource Methods
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		return 1
	}
	
		
	
	 func collectionView( collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 20
    }
	
	
	
	 func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let hue = CGFloat((indexPath.item)) / 20
        let cellColor = UIColor(hue: CGFloat(hue), saturation: 1.0, brightness: 1.0, alpha: 1.0)
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Cell.cellreuseIdentifier, forIndexPath: indexPath) as! Cell
		cell.label.text = "\(indexPath.item)"
		cell.contentView.backgroundColor = cellColor
		
		
		return cell
	}
	

	
	
	
	
	
	
	
	
	
	
	
}



