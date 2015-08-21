//
//  main.m
//  Questions_123
//
//  Created by LaTiesha Caston on 8/19/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "changeArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Question 1
        
        changeArray *question1 = [[changeArray alloc] init];
        
        
      
        NSLog(@"%@", [question1 capObjectsInArray:@[@"cat", @"dog", @"frog"]] );
        
        
        // Question 2
        
        
        changeArray *question2 = [[changeArray alloc] init];
        
        
        
        NSLog(@"%@", [question2 combineArraysOne:@[@1, @2, @3] andTwo:@[@4, @5, @6]]);
        
        
        // Question 2
        
        
        changeArray *question3 = [[changeArray alloc] init];

        
        NSDictionary *cat = @{ @"browncat" : @7,
                               @"lerekre" : @7,
                               @"erjerejk" : @2,
                               @"browncat": @8, };
        
        NSDictionary *dog = @{ @"fhfg" : @7,
                               @"yytyt" : @7,
                               @"itorur" : @7,
                               };
        
        
        
      
        
        NSLog(@"%@", [question3 printOutDictionaryValues:@[cat, dog]]);
        

                      
        
        
    }
    return 0;
}