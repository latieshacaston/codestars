//
//  main.m
//  latiesha_caston_Problemset1
//
//  Created by LaTiesha Caston on 7/27/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"-------------------");
        
        NSLog(@"Question 1");
        
        NSLog(@"-------------------");
        
            NSArray *things = @[@"macbook", @"iPhone", @"racecar", @"ipod", @"computer"];
        
            for (int i = 0; i<[things count]; i++){
        
                NSLog(@"%@", [[things objectAtIndex:i] uppercaseString]);
        
        
            }
        
        NSLog(@"-------------------");
        
        NSLog(@"Question 2");
        
        NSLog(@"-------------------");

        NSArray *numbers = @[@45, @22090909, @5698, @9043, @43431, @3454115, @43002, @109981, @545, @14345435, @1009282, @90909, @13233, @443535, @14782920, @49304, @434];
    
        
        for (int j = 0; j<[numbers count]; j++){
            
            if ([[numbers objectAtIndex:j] integerValue] % 2==0) {
                
                NSLog(@"%@", [numbers objectAtIndex:j]); }
            
            
            
            }
            
        NSLog(@"-------------------");
        
        NSLog(@"Question 3");
        
        NSLog(@"-------------------");
        

    
        NSArray *moreNumbers = @[@100, @80, @85, @70, @99, @50, @45, @89, @34, @53, @25, @39];
    
        sumNumbers (NSArray *) {
        
        int x = 0;
        int total;
        
            
            for (int k = 0; k<[moreNumbers count]; k++){
                
                total = [[moreNumbers objectAtIndex:k] integerValue] + x;
                x = total;
                
            }

            
         sumNumbers(moreNumbers);
            
            NSLog(@"%i", total);
        
        
        }
    
    
    }
    return 0;
}
