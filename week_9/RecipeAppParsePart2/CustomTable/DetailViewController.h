//
//  DetailViewController.h
//  CustomTable
//
//  Created by Simon Ng on 2/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <ParseUI/PFImageView.h>
#import "Recipe.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet PFImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsTextView;

@property (nonatomic, strong) PFObject *recipe;

@end
