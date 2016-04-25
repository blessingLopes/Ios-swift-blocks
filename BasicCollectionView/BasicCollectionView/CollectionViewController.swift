//
//  CollectionViewController.swift
//  BasicCollectionView
//
//  Created by manuel on 30/09/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit

let CELLID = "cellid"


class CollectionViewController: UICollectionViewController {
	
	lazy var mydataSource : CollectionViewDataSource = CollectionViewDataSource()
	
	//MARK:- Init
	override init(collectionViewLayout layout: UICollectionViewLayout) {
		super.init(collectionViewLayout: layout)
		
		// Register cell class & General setup
		collectionView?.registerClass(Cell.self, forCellWithReuseIdentifier: CELLID)
		collectionView?.indicatorStyle = .White
		collectionView?.backgroundColor = UIColor.whiteColor()
		
		
	}

	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
	
	
	//MARK:- View life cycle
	override func viewDidLoad() {
		super.viewDidLoad()


		
		
		
		collectionView?.dataSource = mydataSource
		collectionView?.delegate = self
	}
	
	
	


	
	
	
	
}
