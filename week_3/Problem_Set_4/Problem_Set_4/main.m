//
//  main.m
//  Problem_Set_4
//
//  Created by new on 8/22/15.
//  Copyright (c) 2015 new. All rights reserved.
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
        
        
        // Question 3
        
        
        changeArray *question3 = [[changeArray alloc] init];
        
        
        NSDictionary *car1 = @{ @"make" : @"BMW",
                               @"model" : @"M6",
                               @"year" : @2015, };
       
        
        NSDictionary *car2 = @{ @"make" : @"Ford",
                                @"model" : @"Model T",
                                @"year" : @1908, };
        
        
        NSDictionary *car3 = @{ @"make" : @"Volkswagen",
                                @"model" : @"Beetle",
                                @"year" : @1938, };
        
        
        NSDictionary *car4 = @{ @"make" : @"Toyota",
                                @"model" : @"Corolla",
                                @"year" : @1966, };
        
        
        NSDictionary *car5 = @{ @"make" : @"Ford",
                                @"model" : @"Falcon",
                                @"year" : @1960, };
        
        
     
        
        
        
        
       NSLog(@"%@", [question3 printOutDictionaryValues:@[car1, car2, car3, car4, car5]]);
        
        
        
        
        
    }
    return 0;
}