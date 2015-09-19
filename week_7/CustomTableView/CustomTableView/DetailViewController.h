//
//  DetailViewController.h
//  CustomTableView
//
//  Created by LaTiesha Caston on 9/5/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipes.h"

@interface DetailViewController : UIViewController




@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;

@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UITextView *ingredientsTextView;



@property (nonatomic, strong) Recipes *recipe;

@end
