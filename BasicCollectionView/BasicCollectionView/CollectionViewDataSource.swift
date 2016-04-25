//
//  CollectionViewDataSource.swift
//  BasicCollectionView
//
//  Created by manuel on 01/10/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//



import UIKit




class CollectionViewDataSource: NSObject, UICollectionViewDataSource{
	
	//MARK: Properties
	
	private let itemIdentifier: String
	
	
	//MARK:- Initializers
	convenience override init() {
		self.init(cellIdentifier: CELLID) // calls designated init with a default cell identifier
	}
	
	
	init( cellIdentifier: String ) {
		itemIdentifier = cellIdentifier
		super.init()
		
	}
	
	
	
	
	
	
	//MARK: CollectionView DataSource Methods
	func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
		return 1
	}
	
	

	
	
	 func collectionView( collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
		//peek("number of itens in data model", value: PhotoVault.mainPhotos.photos.count)
		return 20
	}
	
	
	
	 func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCellWithReuseIdentifier(CELLID, forIndexPath: indexPath) as! Cell
		
		cell.label.text = "\(indexPath.item)"
		
		let hue = CGFloat((indexPath.item)) / 20
		let cellColor = UIColor(hue: CGFloat(hue), saturation: 1.0, brightness: 1.0, alpha: 1.0)
		cell.contentView.backgroundColor = cellColor
		
		
		
		return cell
	}
	

	
	
	
	
	
	
	
	
	
	
	
}



