//
//  QuizViewController.h
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/22/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>


int questionSelected;
BOOL answer1Correct;
BOOL answer2Correct;
BOOL answer3Correct;
BOOL answer4Correct;
int scoreNumber;
BOOL gameInProgress;



@interface QuizViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

@property (weak, nonatomic) IBOutlet UIButton *answer1Button;

@property (weak, nonatomic) IBOutlet UIButton *answer2Button;

@property (weak, nonatomic) IBOutlet UIButton *answer3Button;

@property (weak, nonatomic) IBOutlet UIButton *answer4Button;

@property (weak, nonatomic) IBOutlet UILabel *score;



@property (weak, nonatomic) IBOutlet UIImageView *result;

// add this towards the end: https://developers.google.com/youtube/v3/guides/ios_youtube_helper

@property (weak, nonatomic) IBOutlet UIWebView *answerVideo;

@property (weak, nonatomic) IBOutlet UIButton *nextQuestion;

@property (weak, nonatomic) IBOutlet UIButton *done;



// want to make wrong or right answer pull up a modal that they then press to go on


- (IBAction)answer1Pressed:(id)sender;


- (IBAction)answer2Pressed:(id)sender;

- (IBAction)answer3Pressed:(id)sender;


- (IBAction)answer4Pressed:(id)sender;


- (IBAction)nextQuestionPressed:(id)sender;

- (IBAction)donePressed:(id)sender; 


- (void) showNextQuestion; 

-(void) loadQuestions;

- (void) rightAnswer;
- (void) wrongAnswer;



@end
