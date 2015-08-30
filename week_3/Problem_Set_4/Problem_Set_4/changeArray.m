//
//  changeArray.m
//  Problem_Set_4
//
//  Created by new on 8/22/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import "changeArray.h"



@implementation changeArray



- (NSArray *) capObjectsInArray: (NSArray *) array1 {
    
    NSMutableArray *newCappedArray = [[NSMutableArray alloc] init];
    
    for (NSString *item in array1) {
        
        NSString *newItems = [item uppercaseString];
        
        [newCappedArray addObject:newItems ];
    }
    
    return newCappedArray;
    
    
}






- (NSArray *) combineArraysOne: (NSArray *) arrayOne
                        andTwo: (NSArray *) arrayTwo {
    
    
    
    
    NSArray *combinedArray = [ arrayOne arrayByAddingObjectsFromArray:arrayTwo ];
    
    return combinedArray;
    
    
    
}



- (NSMutableArray *) printOutDictionaryValues: (NSArray *) carArray {
    
    
    
    
    NSMutableArray *arrayWithValues = [[NSMutableArray alloc] init];
    
    
    for ( NSDictionary *dictionary in carArray) {
        
        
        
        NSString *valuesInDictionary = [[dictionary allValues] componentsJoinedByString:@" "];
        
        
        [arrayWithValues addObject: valuesInDictionary];
        
        
        
        
        
    }
    
    
    return arrayWithValues;
    
}










@end
