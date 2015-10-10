//
//  DetailViewController.m
//  CustomTable
//
//  Created by Simon Ng on 2/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    PFFile *thumbnail = [self.recipe objectForKey:@"image"];
    self.recipeImageView.image = [UIImage imageNamed:@"placeholder.jpg"];
    self.recipeImageView.file = thumbnail;
    [self.recipeImageView loadInBackground];
    
    self.title = [self.recipe objectForKey:@"name"];
    self.prepTimeLabel.text = [self.recipe objectForKey:@"prepTime"];
    NSArray *ingredients = [self.recipe objectForKey:@"ingredients"];
    
    NSMutableString *ingredientsText = [NSMutableString string];
    for (NSString* ingredient in ingredients) {
        [ingredientsText appendFormat:@"%@\n", ingredient];
    }
    self.ingredientsTextView.text = ingredientsText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
