//
//  QuizTableViewController.h
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/19/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *quizQuestion;


@property (weak, nonatomic) IBOutlet UIButton *answer1;

@property (weak, nonatomic) IBOutlet UIButton *answer2;

@property (weak, nonatomic) IBOutlet UIButton *answer3;

@property (weak, nonatomic) IBOutlet UIButton *answer4;




// want to make wrong or right answer pull up a modal that they then press to go on 


- (IBAction)answer1Pressed:(id)sender;


- (IBAction)answer2Pressed:(id)sender;

- (IBAction)answer3Pressed:(id)sender;


- (IBAction)answer4Pressed:(id)sender;





@end
