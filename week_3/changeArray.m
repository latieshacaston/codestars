//
//  changeArray.m
//  Questions_123
//
//  Created by LaTiesha Caston on 8/19/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
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


- (void) printOutDictionaryValues: (NSArray *) carArray {
    
    
    
    for ( NSDictionary *dictionary in carArray) {
    
        for ( NSString *key  in dictionary) {
        
            
            NSLog(@"%@", [dictionary objectForKey:key ]);
        
        
        
        }
    
    
    
    }

    
        
}


    






//
//
//    NSMutableArray *allValuesArray = [[NSMutableArray alloc] init];
//    
//    for ( NSDictionary *dictionary in carArray) {
//        
//      
//        allValuesArray = [dictionary allValues];
//        
//        return allValuesArray;



//        
//    
//        
//        }
        




@end












//
//    
//    NSDictionary *cat = @{ @"browncat" : @7,
//                           @"lerekre" : @7,
//                           @"erjerejk" : @7,
//                           @"browncat": @7, };
//    
//    NSDictionary *dog = @{ @"fhfg" : @81,
//                           @"yytyt" : @7,
//                           @"itorur" : @7,
//                           };
    
    

    
    
    
//for NSDictionary *carDictionary in
    
    
// NSLog ([carDictionaries[1]objectForKey:@"fhfg"]

//       
//       NSLog(@"Iterating over keys");
//    
//    
//       
//
//       
//       // Go to each item in the array
//       // Go to each key value pair in dictionary
//       // Print out only the value in each ite


// - (NSArray *) capObjectsInArray: (NSArray *) array1 {


//   NSString *string1 = [array1 componentsJoinedByString: @", "];

//   NSArray *newArray = [[string1 uppercaseString]componentsSeparatedByString:@" , "];




//   return  newArray;

// }




