

<!--[![Platform](https://img.shields.io/badge/IOS%20-9.0%2B-orange.svg-->
<!--)](https://developer.apple.com/iphone/index.action)-->
<!--[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat-->
<!--)](https://developer.apple.com/swift)-->
<!--[![](https://img.shields.io/badge/xcode-7.3%2B-blue.svg-->
<!--)](https://developer.apple.com/xcode/)-->


#### Included Sample Projects   <sup id="a1">[:boom:](#f1)</sup> so far :

* **ViewController** 
  * Simple UIViewController subclass
  * Shows how to conditionally compile code depending on the version of Swift being used: ```#if swift(>=2.2)```. 
* **NavigationController** 
  * Simple UINavigationController.
  * Shows how to center a UILabel using Auto Layout Visual Format Language constrainsts.
* **ViewControllerTransition** 
  * Custom transition animation between two View controllers.
  * Extension to ```Selector``` with static constants holding the selectors for the methods we are calling in our class, (usable in Xcode 7.3+, Swift 2.2+).
  * Log app launch time.
  * Enum with no cases holding namespaced constants for the Colors in the app.
  * Enum creating a namespace for constants representing the images used in the app. 
* **TableViewController** with:
  * Simple table view navigation
  * Self-Sizing cells.
  * UILayoutGuide to create constrainsts.
  * Use of dynamic type, which allows the user to change the font size at runtime. As the font size changes, the layout automaticly adjusts. 
* **BasicCollectionView** with:
  * Custom UICollectionViewLayout subclass.
* **NavigationControllerTransition** 
  * Custom transition for a navigation controller. 
          
----
<b id="f1">:boom:</b>
All projects meet two conditions: 
 1. No Storyboards or use of interface builder.
 2. No third party frameworks or APIs. [<](#a1) 

