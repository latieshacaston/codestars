//
//  QuizViewController.h
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/22/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Quiz;

@interface QuizViewController : UIViewController


@property (nonatomic, assign) NSInteger quizIndex;
@property (nonatomic, strong) Quiz *quiz;



@property (weak, nonatomic) IBOutlet UILabel *quizQuestion;


@property (weak, nonatomic) IBOutlet UIButton *answer1;

@property (weak, nonatomic) IBOutlet UIButton *answer2;

@property (weak, nonatomic) IBOutlet UIButton *answer3;

@property (weak, nonatomic) IBOutlet UIButton *answer4;

// connect this later 
@property (weak, nonatomic) IBOutlet UILabel * statusLabel;


// add this towards the end: https://developers.google.com/youtube/v3/guides/ios_youtube_helper

@property (weak, nonatomic) IBOutlet UIWebView *answerVideo;




// want to make wrong or right answer pull up a modal that they then press to go on


- (IBAction)answer1Pressed:(id)sender;


- (IBAction)answer2Pressed:(id)sender;

- (IBAction)answer3Pressed:(id)sender;


- (IBAction)answer4Pressed:(id)sender;


- (IBAction)nextQuestionPressed:(id)sender;



@end
