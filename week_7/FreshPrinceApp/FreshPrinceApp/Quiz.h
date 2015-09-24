//
//  Quiz.h
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/23/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quiz : NSObject



@property (nonatomic, strong) NSMutableArray *quotesArray;
@property (nonatomic, assign) NSInteger correctCount;
@property (nonatomic, assign) NSInteger incorrectCount;
@property (nonatomic, assign) NSInteger quizCount;
@property (nonatomic, readonly, strong) NSString * quote;
@property (nonatomic, readonly, strong) NSString * ans1;
@property (nonatomic, readonly, strong) NSString * ans2;
@property (nonatomic, readonly, strong) NSString * ans3;
@property (nonatomic, readonly, strong) NSString * ans4;


- (id) initWithQuiz: (NSString *)plistName;

-(void) nextQuestion: (NSUInteger) idx;
-(BOOL) checkQuestion: (NSUInteger) question forAnswer: (NSUInteger) answer;

@end
