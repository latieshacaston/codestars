//
//  HomeViewController.h
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *quizButton;

@property (weak, nonatomic) IBOutlet UIButton *memeButton;


- (IBAction)quizButtonPressed:(id)sender;

- (IBAction)memeButtonPressed:(id)sender;

@end
