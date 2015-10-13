//
//  Quiz.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/23/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "Quiz.h"
#import "QuizViewController.h"

@interface Quiz ()

@property (nonatomic, strong) NSString * quote;
@property (nonatomic, strong) NSString * ans1;
@property (nonatomic, strong) NSString * ans2;
@property (nonatomic, strong) NSString * ans3;
@property (nonatomic, strong) NSString * ans4;

@end

@implementation Quiz


- (void) nextQuestion:(NSUInteger)idx {

    self.quizQuestion = [NSString stringWithFormat:@"%@", self.quotesArray[idx][@"quote"]];
    
    self.ans1 = self.quotesArray[idx][@"answer1"];
    self.ans2 = self.quotesArray[idx][@"answer2"];
    self.ans3 = self.quotesArray[idx][@"answer3"];
    self.ans4 = self.quotesArray[idx][@"answer4"];

    if (idx == 0) {
    
        self.correctCount = 0;
        self.incorrectCount = 0;
    
    
    }


}


- (BOOL) checkQuestion: (NSUInteger) question forAnswer: (NSUInteger) answer
{
    NSString * ans = self.quotesArray[question] [@"correctAnswer"];
    if  ([ans intValue] == answer) {
        self.correctCount++;
        return YES;
    } else  {
        self.incorrectCount++;
        return NO;
    }
}









// Initialize the property list
- (id) initWithQuiz: (NSString *)plistName {


    if ((self = [super init])) {
    
    
        NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
        
        self.quotesArray = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
        self.quizCount = [self.quotesArray count];
    
    
    
    }

    return self;


}



@end
