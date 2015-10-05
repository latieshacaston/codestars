//
//  RecipeStoreTableViewController.h
//  RecipeStore
//
//  Created by LaTiesha Caston on 10/3/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface RecipeStoreTableViewController : UITableViewController
<NSFetchedResultsControllerDelegate> //this protocol provides methods to notify its delegate whenever there is any changes in the controller's fetch results

@end
