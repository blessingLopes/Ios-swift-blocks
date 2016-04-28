//
//  CollectionViewController.swift
//  BasicCollectionView
//
//  Created by manuel on 30/04/16.
//  Copyright © 2015 Blessing.co. All rights reserved.
//

import UIKit




class CollectionViewController: UICollectionViewController {
	
	lazy var mydataSource : CollectionViewDataSource = CollectionViewDataSource()
     var fontChangeObserver: AnyObject?
	
	//MARK:- Initialzers
	override init(collectionViewLayout layout: UICollectionViewLayout) {
		super.init(collectionViewLayout: layout)
        
		setupCollectionView()
	}

	required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupCollectionView()
    }
	
	
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareFontChangeObserver()

    }
	
    private func setupCollectionView(){
        
        // Register cell class & General setup
        collectionView?.registerClass(Cell.self, forCellWithReuseIdentifier: Cell.cellreuseIdentifier)
        collectionView?.indicatorStyle = .Black
        collectionView?.backgroundColor = UIColor.whiteColor()

        
        collectionView?.dataSource  = mydataSource
        collectionView?.delegate    = self
    }

	
    private func prepareFontChangeObserver(){
        
        let application = UIApplication.sharedApplication()
        let notificationCenter = NSNotificationCenter.defaultCenter()
        let queue = NSOperationQueue.mainQueue()
        
        fontChangeObserver = notificationCenter.addObserverForName(UIContentSizeCategoryDidChangeNotification, object: application, queue: queue) {
            // [unowned self] to prevent a block from holding a strong reference to the labels
            [unowned self] _ in
            
        // In the cell's prepareForReuse() override, the text is updates to the user prefered size,
        // but not all cells are subject to that call. Reloading the collectionView when the app is 
        // notified that the user changed the prefred front size makes sure all cells get updated.
           self.collectionView?.reloadData()
            
        }
    }
   

	
	
} // ENd
