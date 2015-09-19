//
//  RecipeViewController.h
//  RecipePhoto
//
//  Created by LaTiesha Caston on 9/18/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;


@property (weak, nonatomic) NSString *recipeImageName;


- (IBAction)close:(id)sender;

@end
