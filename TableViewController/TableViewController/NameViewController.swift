//
//  NameViewController.swift
//  TableViewController
//
//  Created by Manuel Lopes on 11/04/16.
//  Copyright © 2016 Manuel Lopes. All rights reserved.
//


import UIKit

class NameViewController: UIViewController {
    
    var fontChangeObserver: AnyObject?

   
    lazy var fullStringLabel : UITextView = {
        // this could be a UILabel too.
        // By default a UILabel places the test vertically centered
        // A textView places the text at the top by default, which suits this situation better.
        let textview  = UITextView()
        textview.textColor = .blackColor()
        textview.backgroundColor = .yellowColor()
        textview.text = self.name
        textview.textAlignment = .Center
        textview.font  = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        textview.translatesAutoresizingMaskIntoConstraints = false
        textview.userInteractionEnabled = true
        textview.editable = false
  
        
        return textview
    }()

  
    lazy var titleLabel: UILabel = {
        let label  = UILabel()
        
        label.textColor = .whiteColor()
        label.backgroundColor = .magentaColor()
        label.text = "This is the Title!"
        label.font  = UIFont.preferredFontForTextStyle(UIFontTextStyleTitle1)
        label.numberOfLines = 0
        label.textAlignment = .Center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    let name: String
    
    
// MARK:-  initializers
    

    init(withName: String){
        name = withName
        super.init(nibName: nil, bundle: nil)
     
    }
    
    required  init?(coder aDecoder: NSCoder) {
       fatalError("interface builder is on break")
    }
    
    
    deinit {
        if let observer = fontChangeObserver {
            NSNotificationCenter.defaultCenter().removeObserver(observer)
        }
       
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        view.backgroundColor = UIColor.whiteColor()
        view.addSubview(fullStringLabel)
        view.addSubview(titleLabel)
        
        prepareFontChangeObserver()
        
        prepareConstraints()
    }
    
    private func prepareFontChangeObserver(){
    
        let application = UIApplication.sharedApplication()
        let notificationCenter = NSNotificationCenter.defaultCenter()
        let queue = NSOperationQueue.mainQueue()
        
        fontChangeObserver = notificationCenter.addObserverForName(UIContentSizeCategoryDidChangeNotification, object: application, queue: queue) {
            // [unowned self] to prevent a block from holding a strong reference to the labels
            [unowned self] _ in
           
            self.titleLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleTitle1)
            self.fullStringLabel.font  = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        }
    }
    
    
    private func prepareConstraints(){
    
        // set constraint on label using Layout Guides
        let margins = view.layoutMarginsGuide
        
        // set constrainst for titleLabel
        
        // Pin the leading edge of titleLabel to the superview  leading edge
        titleLabel.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        
        // Pin the trailing edge of titleLabel to the superview  trailing edge
        titleLabel.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        
        // Pin the top edge pf titleLabel 120 points away from the superview top margin
        titleLabel.topAnchor.constraintEqualToAnchor(margins.topAnchor, constant: 90.0).active = true
        
        
        
        // Pin the leading edge of fullStringLabel to the superview  leading edge
        fullStringLabel.leadingAnchor.constraintEqualToAnchor(margins.leadingAnchor).active = true
        
        // Pin the trailing edge of fullStringLabel to the superview  trailing edge
        fullStringLabel.trailingAnchor.constraintEqualToAnchor(margins.trailingAnchor).active = true
        
        // Pin the top edge of the fullStringLabel 10 points from the bottom margin of the titleLabel
        fullStringLabel.topAnchor.constraintEqualToAnchor(titleLabel.bottomAnchor, constant: 20).active = true
        
        // Pin the bottom edge of the label 20 points from bottom margin of the superview
        fullStringLabel.bottomAnchor.constraintEqualToAnchor(margins.bottomAnchor, constant: -20.0).active = true

    }
    
    
}// End

