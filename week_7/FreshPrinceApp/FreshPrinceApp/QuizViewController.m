//
//  QuizViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/22/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "QuizViewController.h"
#import "Quiz.h"

@interface QuizViewController ()

@property (assign, nonatomic) NSInteger answer;

@end

@implementation QuizViewController




NSString *correctAnswer;

NSArray *questions;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.quizIndex = 999;
    
    
    //Instantiate an instance of Quiz and pass the name of the property list 
    self.quiz = [[Quiz alloc] initWithQuiz:@"quotes"];
        
    [self nextQuizItem];  
    
}
    


    






- (IBAction)answer1Pressed:(id)sender {
    
    
    if ([correctAnswer isEqualToString: @"1"])
    {
        
        //bring up the modal segue
        NSLog(@"You Are Correct!");
        
        [self performSegueWithIdentifier:@"rightAnswer" sender:self];
        
        
        
    }
    else {
        
        
        [self performSegueWithIdentifier:@"wrongAnswer" sender:self];

        NSLog(@"You Are Wrong!");
        
    }
    
    
    
}


- (IBAction)answer2Pressed:(id)sender {
    
    
    if ([correctAnswer isEqualToString: @"2"])
    {
        
        //bring up the modal segue
        NSLog(@"You Are Correct!");
        
        [self performSegueWithIdentifier:@"rightAnswer" sender:self];
        
        
        
    }
    else {
        
        
        [self performSegueWithIdentifier:@"wrongAnswer" sender:self];
        
        NSLog(@"You Are Wrong!");
        
    }
    
}

- (IBAction)answer3Pressed:(id)sender {
    
    
    if ([correctAnswer isEqualToString: @"3"])
    {
        
        //bring up the modal segue
        NSLog(@"You Are Correct!");
        
        [self performSegueWithIdentifier:@"rightAnswer" sender:self];
        
        
        
    }
    else {
        
        
        [self performSegueWithIdentifier:@"wrongAnswer" sender:self];
        
        NSLog(@"You Are Wrong!");
        
    }
    
    
    
    
    
}


- (IBAction)answer4Pressed:(id)sender {
    
    
    if ([correctAnswer isEqualToString: @"4"])
    {
        
        //bring up the modal segue
        NSLog(@"You Are Correct!");
        
        [self performSegueWithIdentifier:@"rightAnswer" sender:self];
        
        
        
    }
    else {
        
        
        [self performSegueWithIdentifier:@"wrongAnswer" sender:self];
        
        NSLog(@"You Are Wrong!");
        
    }
    
    
}

- (IBAction)nextQuestionPressed:(id)sender {
    
   
    
        [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    [self viewDidLoad];
    
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

- (void)quizDone
{
    // More later
}


- (void)nextQuizItem
{
    if (self.quizIndex == 999) {
        self.quizIndex = 0;
        self.statusLabel.text = @"";
    } else if ((self.quiz.quizCount-1) > self.quizIndex) {
        self.quizIndex++;
    } else {
        self.quizIndex = 0;
        self.statusLabel.text = @"";
    }
    
    if (self.quiz.quizCount >= self.quizIndex + 1) {
        [self.quiz nextQuestion:self.quizIndex];
        self.quizQuestion.text = self.quiz.quote;
        [self.answer1 setTitle: self.quiz.ans1 forState:UIControlStateNormal];
        [self.answer2 setTitle: self.quiz.ans2 forState:UIControlStateNormal];
        [self.answer3 setTitle: self.quiz.ans3 forState:UIControlStateNormal];
        [self.answer4 setTitle: self.quiz.ans4 forState:UIControlStateNormal];
    
        
    } else {
        self.quizIndex = 0;
        [self quizDone];
    }
    
}


@end
                  

