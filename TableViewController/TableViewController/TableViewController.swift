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
    
    // Array to use as data source for the tableView
    let dataSource : [String] = ["era", "uma", "vez", "um", "broken", "heart" ]
    
    
    //MARK:- Initializers
    init(){
        super.init(nibName: nil, bundle: nil)
        
        //register the table view cell class
        tableView.registerClass( TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseIdentifier)
        
        // set up data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK:- De-initializer
    deinit{
        
    }
    
    
    
    // viewcontroller's view life cycle
    
    override func viewDidLoad() {
        
        
        
        //Table view config
        tableView.rowHeight = 92.0
        tableView.separatorStyle = .None
        tableView.backgroundColor = UIColor.blackColor()
        
        
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
        cell!.titleLabel.text = dataSource[indexPath.item]
        
        
        return cell!
        
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let nameVC = NameViewController()
        nameVC.fullName =  dataSource[indexPath.row]
        navigationController?.pushViewController(nameVC, animated: true)
    }
    

    
    
}// END

