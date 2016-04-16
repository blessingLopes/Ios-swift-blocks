//
//  TableViewController.swift
//  TableViewController
//
//  Created by Manuel Lopes on 05/04/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//


import UIKit


//let cellID = "ALLSTRINGS"


class TableViewContoller: UITableViewController {
    
    // used to track changes in the user's text size accessibility setting
    var fontChangeObserver: AnyObject?
    
    
    // Array to use as data source for the tableView
    let dataSource : [String] = ["era", "uma", "vez", "um", "broken", "heart" , "another", "love", "way", "to", "do",   "This life, which had been the tomb of his virtue and of his honor, is but a walking shadow; a poor player, that struts and frets his hour upon the stage, and then is heard no more: it is a tale told by an idiot, full of sound and fury, signifying nothing.", "end"
]
    
    
    //MARK:- Initializers
    init(){
        super.init(nibName: nil, bundle: nil)
        
        //register the table view cell class
        tableView.registerClass( TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseIdentifier)
        
        // set up data source and delegate
//        tableView.dataSource = self
//        tableView.delegate = self
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK:- De-initializer
    deinit {
        if let observer = fontChangeObserver {
            NSNotificationCenter.defaultCenter().removeObserver(observer)
        }
    }

    
    
    
    // viewcontroller's view life cycle
    
    override func viewDidLoad() {

        // Enable self sizing rows.
        tableView.estimatedRowHeight = 70.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        //Table view config
        tableView.separatorStyle = .None
        tableView.backgroundColor = .whiteColor()
        
//        setupFontSizeOberver()
        // Set up font change observer
        let application = UIApplication.sharedApplication()
        let notificationCenter = NSNotificationCenter.defaultCenter()
        let queue = NSOperationQueue.mainQueue()
        
        fontChangeObserver = notificationCenter.addObserverForName(UIContentSizeCategoryDidChangeNotification, object: application, queue: queue) { [unowned self] _ in
            /*
             The user has changed the system font sizes, reset the the labels'
             fonts to apply the new sizes.
             */
            
            self.tableView.invalidateIntrinsicContentSize()
            
        }

     
    }
    
    
    
    //MARK:- tableview dataSource Methods
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView( tableView: UITableView,	numberOfRowsInSection section: Int) -> Int{
        
        return dataSource.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        // NEEDS to be registered BEFORE its gets dequeued
        var cell  = tableView.dequeueReusableCellWithIdentifier(TableViewCell.reuseIdentifier, forIndexPath: indexPath) as? TableViewCell
        if (cell == nil){
            cell = TableViewCell(style: .Default, reuseIdentifier: TableViewCell.reuseIdentifier)
        }
        cell!.accessoryType = .DisclosureIndicator
        
        // provide the string from the data source
        cell!.label.text = dataSource[indexPath.item]
        
        
        return cell!
        
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let nameVC = NameViewController(withName: dataSource[indexPath.row] )
        navigationController?.pushViewController(nameVC, animated: true)
    }
    

    private func setupFontSizeOberver(){
        // Set up font change observer
        let application = UIApplication.sharedApplication()
        let notificationCenter = NSNotificationCenter.defaultCenter()
        let queue = NSOperationQueue.mainQueue()
        
        fontChangeObserver = notificationCenter.addObserverForName(UIContentSizeCategoryDidChangeNotification, object: application, queue: queue) { [unowned self] _ in
            /*
             The user has changed the system font sizes, reset the the labels'
             fonts to apply the new sizes.
             */

            self.tableView.invalidateIntrinsicContentSize()
         
        }

    }
    
    
}// END

