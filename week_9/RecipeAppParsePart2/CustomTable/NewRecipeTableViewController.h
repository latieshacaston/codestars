//
//  NewRecipeTableViewController.h
//  CustomTable
//
//  Created by Simon Ng on 10/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewRecipeTableViewController : UITableViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITextFieldDelegate>



- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *prepTimeTextField;
@property (weak, nonatomic) IBOutlet UITextField *ingredientsTextField;
@end
