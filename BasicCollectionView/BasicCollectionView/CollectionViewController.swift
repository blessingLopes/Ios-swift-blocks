//
//  CollectionViewController.swift
//  BasicCollectionView
//
//  Created by manuel on 30/09/15.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit




class CollectionViewController: UICollectionViewController {
	
	lazy var mydataSource : CollectionViewDataSource = CollectionViewDataSource()
	
	//MARK:- Initialzers
	override init(collectionViewLayout layout: UICollectionViewLayout) {
		super.init(collectionViewLayout: layout)
        
		setupCollectionView()
	}

	required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupCollectionView()
    }
	
	
	
    private func setupCollectionView(){
        
        // Register cell class & General setup
        collectionView?.registerClass(Cell.self, forCellWithReuseIdentifier: Cell.cellreuseIdentifier)
        collectionView?.indicatorStyle = .Black
        collectionView?.backgroundColor = UIColor.whiteColor()

        
        collectionView?.dataSource  = mydataSource
        collectionView?.delegate    = self
    }

	
	
	
	
} // ENd
