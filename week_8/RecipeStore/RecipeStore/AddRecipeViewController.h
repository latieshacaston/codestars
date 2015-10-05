//
//  AddRecipeViewController.h
//  RecipeStore
//
//  Created by LaTiesha Caston on 10/3/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Recipe.h"

@interface AddRecipeViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *nameTextField;


@property (weak, nonatomic) IBOutlet UITextField *imageTextField;


@property (weak, nonatomic) IBOutlet UITextField *prepTimeTextField;

@property (strong) Recipe *selectedRecipe; 


- (IBAction)save:(id)sender;


- (IBAction)cancel:(id)sender;

@end
